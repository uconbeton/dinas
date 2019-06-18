@extends('app')

@section('konten')
{{-- <div class="breadcomb-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcomb-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="breadcomb-wp">
                                <div class="breadcomb-icon">
                                    <i class="notika-icon notika-windows"></i>
                                </div>
                                <div class="breadcomb-ctn">
                                    <h2>Data Table</h2>
                                    <p>Welcome to Notika <span class="bread-ntd">Admin Template</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                            <div class="breadcomb-report">
                                <button data-toggle="tooltip" data-placement="left" title="Download Report" class="btn"><i class="notika-icon notika-sent"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<div class="data-table-area">
    <div class="container">
        @if($cek==0)
            <form method="post" action="{{ url('/save-kuis')}}">
            <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
            <input type = "hidden" name = "email" value = "{{Auth::user()->email}}">
            <input type = "hidden" name = "tahap" value = "{{$tahapan->id}}">
            <div class="row" style="margin-right: -60px;margin-left: -60px;">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                            <h2>Soal Kuesioner {{$cek}}</h2>
                            
                        </div>
                        <div class="table-responsive">
                                <p><span class="btn btn-info" data-toggle="modal" data-target="#myModalthree"><i class="notika-icon notika-next"></i> Simpan dan Keluar</span></p>
                            <table id="datatable" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>&nbsp;</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($data as $no=>$o)
                                        <tr>
                                            <td>
                                            {{$no+1}}.{{$o->pertanyaan}}<br>
                                            <input type="hidden"  value="{{$o->id}}">
                                                @foreach($jawaban->where('kuesioner_id',$o->id) as $jawab)
                                                    <input type="radio" name="jawaban_id{{$no}}" value="{{$o->id}}-{{$jawab->id}}-{{$jawab->jawaban}}-{{$jawab->nilai}}-{{Auth::user()->email}}-{{$o->unsur_id}}"> 
                                                        @if($jawab->urut==0)
                                                            A.{{$jawab->jawaban}}<br>
                                                        @elseif($jawab->urut==1)
                                                            B.{{$jawab->jawaban}}<br>
                                                        @elseif($jawab->urut==2)
                                                            C.{{$jawab->jawaban}}<br>
                                                        @else
                                                            D.{{$jawab->jawaban}}<br>
                                                        @endif
                                                @endforeach
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                
                            </table>
                            <div class="modal fade" id="myModalthree" role="dialog">
                                <div class="modal-dialog modal-large">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <h2><i>Jika Ada Perubahan Data Silahkan Ubah Form Di Bawah ini </i></h2>
                                            
                                            <br>
                                            <button class="btn btn-info"><i class="notika-icon notika-next"></i> Simpan dan Keluar</button>
                                            <br>
                                            <br>
                                            <div class="form-group">
                                                <label>Nama :</label><br>
                                                <input type="text" name="name"  readonly  value="{{$profil->name}}" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Email :</label><br>
                                                <input type="text" name="email" readonly   value="{{$profil->email}}" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>No Handphone :</label><br>
                                                <input type="text" name="no_hp"  readonly  value="{{$profil->no_hp}}" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Usia Responden :</label><br>
                                                <input type="text" name="usia"    value="{{$profil->usia}}" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Jenis Kelamin :</label><br>
                                                <select class="form-control" name="jenis_kelamin">
                                                    <option value="Laki-laki" @if($profil->jenis_kelamin=='Laki-laki') selected @endif >Laki-laki</option>
                                                    <option value="Perempuan" @if($profil->jenis_kelamin=='Perempuan') selected @endif >Perempuan</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Agama :</label><br>
                                                <select class="form-control" name="agama">
                                                    <option value="Islam" @if($profil->agama=='Islam') selected @endif >Islam</option>
                                                    <option value="Kristen" @if($profil->agama=='Kristen') selected @endif >Kristen</option>
                                                    <option value="Hindu" @if($profil->agama=='Hindu') selected @endif >Hindu</option>
                                                    <option value="Budha" @if($profil->agama=='Budha') selected @endif >Budha</option>
                                                    <option value="Katolik" @if($profil->agama=='Katolik') selected @endif >Katolik</option>
                                                    <option value="Kong Hu Cu" @if($profil->agama=='Kong Hu Cu') selected @endif >Kong Hu Cu</option>
                                                    <option value="Lainnya" @if($profil->agama=='Lainnya') selected @endif >Lainnya</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Status Pernikahan :</label><br>
                                                <select class="form-control" name="status_pernikahan">
                                                    <option value="Menikah" @if($profil->status_pernikahan=='Menikah') selected @endif >Menikah</option>
                                                    <option value="Belum Menikah" @if($profil->status_pernikahan=='Belum Menikah') selected @endif >Belum Menikah</option>
                                                    <option value="Pernah Menikah" @if($profil->status_pernikahan=='Pernah Menikah') selected @endif>Pernah Menikah</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Pendidikan :</label><br>
                                                <select class="form-control" name="pendidikan">
                                                    <option value="Tidak Sekolah / Tdk Tamat SD" @if($profil->pendidikan=='Tidak Sekolah / Tdk Tamat SD') selected @endif >Tidak Sekolah / Tdk Tamat SD</option>
                                                    <option value="SD" @if($profil->pendidikan=='SD') selected @endif >SD</option>
                                                    <option value="SLTP" @if($profil->pendidikan=='SLTP') selected @endif >SLTP</option>
                                                    <option value="SLTA" @if($profil->pendidikan=='SLTA') selected @endif>SLTA</option>
                                                    <option value="Diploma" @if($profil->pendidikan=='Diploma') selected @endif>Diploma</option>
                                                    <option value="Sarjana" @if($profil->pendidikan=='Sarjana') selected @endif>Sarjana</option>
                                                    <option value="Pasca Sarjana" @if($profil->pendidikan=='Pasca Sarjana') selected @endif>Pasca Sarjana</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Pengeluaran Dana Perbulan :</label><br>
                                                <input type="text" name="pengeluaran"    value="{{$profil->pengeluaran}}" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Pekerjaan :</label><br>
                                                <input type="text" name="pekerjaan"    value="{{$profil->pekerjaan}}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        @else
        <br><br>
            <div class="alert alert-success" role="alert" style="text-align:center">
            <img src="{{url('/img/terimakasih.png')}}" style="width:9%"><br><br>
            <h2>Terima Kasih Anda Sudah Mengisi Surver Kepuasan <b>"{{$tahapan->tahapan}}"</b></h2>
            </div>
        @endif
    </div>
</div>

@endsection