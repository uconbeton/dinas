<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderMail;
use Validator;
use App\Kuesioner;
use App\KuesionerJawaban;
use App\HasilSurvey;
use App\User;
use App\Tahapan;
use App\Unsur;
use PDF;
class ModulController extends Controller
{
    public function formtahapan($act=null,$id=null){
        
        if(is_null($act)){
            $data='';
            $id='';
            $act='new';
            $tahapannya='';
        }else{
            $data=Tahapan::find($id);
            $act='edit';
            $tahapannya=$data->tahapan;
            $id=$id;
        }
        $tahapan=Tahapan::all();
        return view('moduladmin.form-tahapan',compact('data','tahapan','act','id','tahapannya'));
    }
    public function formsurveytahapan($act=null,$id=null){
        
        if(is_null($act)){
            $data='';
            $id='';
            $act='new';
            $tahapannya='';
        }else{
            $data=Tahapan::find($id);
            $act='edit';
            $tahapannya=$data->tahapan;
            $id=$id;
        }
        $tahapan=Tahapan::all();
        return view('moduladmin.form-surveytahapan',compact('data','tahapan','act','id','tahapannya'));
    }
    public function ststahapan($act=null,$id=null){
        $datas           =Tahapan::where('sts','1')->first();
        $datas->sts      =0;
        $datas->save();


        if($act=='on'){
            $data           =Tahapan::find($id);
            $data->sts      =1;
            $data->save();
        }else{
            $data           =Tahapan::find($id);
            $data->sts      =1;
            $data->save();
        }
        return redirect('/form-tahapan');
    }

    public function instahapan(request $request){
        $rules = [

            'tahapan'            => 'required'

        ];
    
        $customMessages = [
            'soal.tahapan'           => '- Soal Kuesioner Harus diisi'
           
        ];
    
        

        $validator = Validator::make($request->all(), $rules,$customMessages); 
       
        if ($validator->fails()) {
            return redirect('/form-tahapan')
                        ->withErrors($validator)
                        ->withInput();
        }

        if($request->act=='new'){
            $data                =New Tahapan;
            $data->tahapan       =$request->tahapan;
            $data->sts           =0;
            $data->save();
        }else{
            $data                =Tahapan::find($request->id);
            $data->tahapan       =$request->tahapan;
            $data->save();
        }
        
       

        
        return redirect('/form-tahapan');
    }

    public function index(){
        $data='';
        $nilai=collect([]);
        $unsur=Unsur::count();
        $pengunjung=HasilSurvey::distinct('email')->whereYear('waktu',date('Y'))->count('email');
        for($x=1;$x<13;$x++){
            if($x>9){$bul=$x;}else{$bul='0'.$x;}
            $nil=HasilSurvey::distinct('email')->whereMonth('waktu',$bul)->count('email');

            $nilai->push([
                'nilai' => $nil
            ]);
        }
        return view('moduladmin.home',compact('data','nilai','unsur','pengunjung'));
    }

    public function kuesionersoal(){
        $data='';
        $tahapan=Tahapan::all();
        $unsur=Unsur::all();
        return view('moduladmin.form-kuesioner',compact('data','tahapan','unsur'));
    }
    

    public function updkuesioner($id=null){
        $data=Kuesioner::find($id);
        $tahapan=Tahapan::all();
        $unsur=Unsur::all();
        $jawaban=KuesionerJawaban::where('kuesioner_id',$id)->orderBy('urut','Asc')->get();
        $jumlah=KuesionerJawaban::where('kuesioner_id',$id)->count();
        return view('moduladmin.edit-kuesioner',compact('data','jawaban','jumlah','tahapan','unsur'));
    }

    public function listkuesioner(){
        $kuesioner=Kuesioner::all();
        $jawaban=KuesionerJawaban::all();
        return view('moduladmin.list-kuesioner',compact('kuesioner','jawaban'));
    }

    public function deletejawaban($id=null,$kue=null){
        $jawaban=KuesionerJawaban::where('id',$id)->delete();
        return redirect('/upd-kuesioner/'.$kue);
    }

    public function delkuesioner($id=null){
        $jawaban=Kuesioner::where('id',$id)->delete();
        return redirect('/list-kuesioner/');
    }
    

    public function inskuesioner(request $request){
        $rules = [

            'soal'            => 'required'

        ];
    
        $customMessages = [
            'soal.required'           => '- Soal Kuesioner Harus diisi'
           
        ];
    
        

        $validator = Validator::make($request->all(), $rules,$customMessages); 
       
        if ($validator->fails()) {
            return redirect('/kuesioner-soal')
                        ->withErrors($validator)
                        ->withInput();
        }

        
        
        $data                   =New Kuesioner;
        $data->pertanyaan       =$request->soal;
        $data->tahapan_id       =$request->tahapan_id;
        $data->unsur_id         =$request->unsur_id;
        $data->save();

        for($i=0;$i<sizeof($request->jawaban);$i++){
            $jawaban                =new KuesionerJawaban;
            $jawaban->jawaban       = $request->jawaban[$i];
            $jawaban->nilai         = $request->nilai[$i];
            $jawaban->kuesioner_id  = $data->id;
            $jawaban->urut          = $i;
            $jawaban->save();
        }
        
        return redirect('/list-kuesioner');
    }
    

    public function editkuesioner(request $request){
        $rules = [

            'soal'            => 'required'

        ];
    
        $customMessages = [
            'soal.required'           => '- Soal Kuesioner Harus diisi'
           
        ];
    
        

        $validator = Validator::make($request->all(), $rules,$customMessages); 
       
        if ($validator->fails()) {
            return redirect('/upd-kuesioner')
                        ->withErrors($validator)
                        ->withInput();
        }

        
        
        $data                   =Kuesioner::find($request->id);
        $data->pertanyaan       =$request->soal;
        $data->tahapan_id       =$request->tahapan_id;
        $data->unsur_id         =$request->unsur_id;
        $data->save();

        $del=KuesionerJawaban::where('kuesioner_id',$request->id)->delete();

        for($i=0;$i<sizeof($request->jawaban);$i++){
            $jawaban                =new KuesionerJawaban;
            $jawaban->jawaban       = $request->jawaban[$i];
            $jawaban->nilai         = $request->nilai[$i];
            $jawaban->kuesioner_id  = $data->id;
            $jawaban->urut          = $i;
            $jawaban->save();
        }
        
        return redirect('/list-kuesioner');
    }


    public function formuser(){
        $data='';
        return view('moduladmin.form-user',compact('data'));
    }

    public function insuser(request $request,$act=null){
        $rules = [

            'name'             => 'required',
            'email'            => 'required|email|',
            'no_hp'            => 'required|numeric'

        ];
    
        $customMessages = [
            'name.required'            => '- Nama User Harus diisi',
            'email.required'           => '- Email Harus diisi',
            'email.email'              => '- Format Email Salah',
            'no_hp.required'           => '- No Handphone Harus diisi',
            'no_hp.numeric'            => '- Format No Handphone Harus Angka'
           
        ];
    
        

        $validator = Validator::make($request->all(), $rules,$customMessages); 
       
        if ($validator->fails()) {
            return redirect('/form-user')
                        ->withErrors($validator)
                        ->withInput();
        }

        
        if($act=='edit'){
            $data                   =User::find($request->id);
            $data->name             =$request->name;
            $data->no_hp            =$request->no_hp;
            $data->usia             =$request->usia;
            $data->email            =$request->email;
            $data->jenis_kelamin    =$request->jenis_kelamin;
            $data->pendidikan       =$request->pendidikan;
            $data->agama            =$request->agama;
            $data->status_pernikahan =$request->status_pernikahan;
            $data->pekerjaan        =$request->pekerjaan;
            $data->pengeluaran      =$request->pengeluaran;
            $data->password         =Hash::make($request->no_hp);
            $data->save();
    
        }else{
            $data                   =New User;
            $data->name             =$request->name;
            $data->no_hp            =$request->no_hp;
            $data->email            =$request->email;
            $data->usia             =$request->usia;
            $data->jenis_kelamin    =$request->jenis_kelamin;
            $data->pendidikan       =$request->pendidikan;
            $data->agama            =$request->agama;
            $data->status_pernikahan =$request->status_pernikahan;
            $data->pekerjaan        =$request->pekerjaan;
            $data->pengeluaran      =$request->pengeluaran;
            $data->password         =Hash::make($request->no_hp);
            $data->save();
    
        }
        
       
        return redirect('/list-user');
    }

    public function listuser(){
        $data=User::all();
        return view('moduladmin.list-user',compact('data'));
    }

    public function formedit($id){
        $data=User::find($id);
        return view('moduladmin.edit-user',compact('data'));
    }
    

    public function deluser($id=null){
        $user=User::where('id',$id)->delete();
        return redirect('/list-user/');
    }
    
    public function save_survey(request $request){
        $data=Kuesioner::count();
        return view('modul.kuesioner',compact('data'));
    }

    public function insemail(request $request){
        $rules = [

            'isi'             => 'required'

        ];
    
        $customMessages = [
            'isi.required'            => '- Text Email Harus diisi'
           
        ];
    
        

        $validator = Validator::make($request->all(), $rules,$customMessages); 
       
        if ($validator->fails()) {
            return redirect('/form-email')
                        ->withErrors($validator)
                        ->withInput();
        }

        
        dd(sizeof($request->email));
       
        return redirect('/form-email');
    }

    public function formemail(){
        $data=User::all();
        return view('moduladmin.form-email',compact('data'));
    }

    public function formwa(){
        $data=User::all();
        return view('moduladmin.form-wa',compact('data'));
    }

    public function kirim_email(request $request){
        
        for($i=0;$i<sizeof($request->email);$i++){
            $isi=explode('-',$request->email[$i]);

            $email=$isi[0];
            $nohp=$isi[1];
            Mail::to($email)->send(new OrderMail($email,$nohp));
        }
        return redirect('/form-email/');
        // Mail::to('uconbeton@gmail.com')->send(new OrderMail('uconbeton@gmail.com','08787878778778'));
    }




    public function kuesioner(){
        $tahapan=Tahapan::where('sts','1')->first();
        $cek=HasilSurvey::where('tahapan_id',$tahapan->id)->where('email',Auth::user()->email)->count();
        $data=Kuesioner::where('tahapan_id',$tahapan->id)->orderBy('id','Asc')->get();
        $profil=User::where('email',Auth::user()->email)->first();
        $jawaban=KuesionerJawaban::orderBy('urut','Asc')->get();
        return view('modul.kuesioner',compact('data','jawaban','tahapan','cek','profil'));
    }

    public function kirimwa(){
        $message = "Apa Kabar";
        $phone_no = "+6289526444571";

        $message = preg_replace( "/(\n)/", "<ENTER>", $message );
        $message = preg_replace( "/(\r)/", "<ENTER>", $message );

        $phone_no = preg_replace( "/(\n)/", ",", $phone_no );
        $phone_no = preg_replace( "/(\r)/", "", $phone_no );

        $data = array("phone_no" => $phone_no, "key" => "c27913ff8777cf1b60346860c581a842e21e4fe19304a283", "message" => $message);
        $data_string = json_encode($data);
        $ch = curl_init('https://167.86.97.133/api/send_message');
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST"); 
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_VERBOSE, 0);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0); 
        curl_setopt($ch, CURLOPT_TIMEOUT, 15);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json',
        'Content-Length: ' . strlen($data_string)) 
        ); 
        $result = curl_exec($ch);
        //echo $result;
    }

    public function savekuis(request $request){
       
        $data                   =User::where('email',$request->email)->first();
        $data->jenis_kelamin    =$request->jenis_kelamin;
        $data->pendidikan       =$request->pendidikan;
        $data->usia             =$request->usia;
        $data->agama            =$request->agama;
        $data->status_pernikahan =$request->status_pernikahan;
        $data->pekerjaan        =$request->pekerjaan;
        $data->pengeluaran      =$request->pengeluaran;
        $data->save();


        $jum=Kuesioner::count();
        $tahap=$request->tahap;

        for($i=0;$i<$jum;$i++){
           
            $jawab = 'jawaban_id'.$i;
            $jawaban=explode('-',$request->$jawab);
            
            if(is_null($request->$jawab)){

            }else{
                $quis               =new HasilSurvey;
                $quis->kuesioner_id =$jawaban[0];
                $quis->jawaban_id   =$jawaban[1];
                $quis->jawaban      =$jawaban[2];
                $quis->nilai        =$jawaban[3];
                $quis->email        =$jawaban[4];
                $quis->unsur_id     =$jawaban[5];
                $quis->tahapan_id   =$tahap;
                $quis->waktu        =date('Y-m-d h:i:s');
                $quis->save();
            }

            $user           =User::where('email',$request->email)->first();
            $user->tahap    =$tahap;
            $user->save(); 
            
        }


        return redirect('/kuesioner/');
        
    }

    public function cariview(request $request){

        return redirect('/view-hasil/'.$request->id.'/'.$request->tanggal);
    }
    public function viewhasil($id=null,$tgl=null){
        $unsur=Unsur::all();
        $total = collect([]);
        $nrr = collect([]);
        $nrrtimbang = collect([]);
        
        $jumunsur=Unsur::count();
        foreach($unsur as $o){
            if(is_null($tgl)){
                $dat=HasilSurvey::where('unsur_id',$o->id)->where('tahapan_id',$id)->sum('nilai');
            }else{
                $dat=HasilSurvey::where('unsur_id',$o->id)->where('tahapan_id',$id)->whereDate('waktu',$tgl)->sum('nilai');
            }
           
        
            $total->push([
                'nilai' => $dat
            ]);

            $jumnnr=$dat/$jumunsur;
            $nrr->push([
                'nrr' => $jumnnr
            ]);

            $jumnnrter=$jumnnr*0.017;
            $nrrtimbang->push([
                'nrr' => $jumnnrter
            ]);

            $tot[]=$jumnnrter;
            
      
        }
        $ratarata =array_sum($tot)/$jumunsur;
        $totratarata=$ratarata*25;
        
        return view('moduladmin.view-hasil',compact('totratarata','unsur','total','jumunsur','nrr','nrrtimbang','ratarata','ratarata','id','tgl'));
    }

    public function laporan_pdf($id=null,$tgl=null){
        $unsur=[];
        $total=[];
        $nrr=[];
        $nrrtimbang=[];
        $jumunsur=[];
        $ratarata=[];
        $totratarata=[];



        $unsur=Unsur::all();
        $total = collect([]);
        $nrr = collect([]);
        $nrrtimbang = collect([]);
        
        $jumunsur=Unsur::count();
        foreach($unsur as $o){
            if(is_null($tgl)){
                $dat=HasilSurvey::where('unsur_id',$o->id)->sum('nilai');
            }else{
                $dat=HasilSurvey::where('unsur_id',$o->id)->whereDate('waktu',$tgl)->sum('nilai');
            }
        
            $total->push([
                'nilai' => $dat
            ]);

            $jumnnr=$dat/$jumunsur;
            $nrr->push([
                'nrr' => $jumnnr
            ]);

            $jumnnrter=$jumnnr*0.017;
            $nrrtimbang->push([
                'nrr' => $jumnnrter
            ]);

            $tot[]=$jumnnrter;
            
      
        }
        $ratarata =array_sum($tot)/$jumunsur;
        $totratarata=$ratarata*25;


        $data['unsur']=$unsur;
        $data['total']=$total;
        $data['nrr']=$nrr;
        $data['nrrtimbang']=$nrrtimbang;
        $data['jumunsur']=$jumunsur;
        $data['ratarata']=$ratarata;
        $data['totratarata']=$totratarata;
        //$data = ['title' => 'Welcome to belajarphp.net'];
 
        $pdf = PDF::loadView('pdf.viewpdf', $data);
        // return $pdf->download('laporan-pdf.pdf');
        return $pdf->stream();
    }
}
