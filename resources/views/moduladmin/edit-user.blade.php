@extends('appadmin')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="box box-widget ">
        <div class="box-header with-border" style="background: #644ad2;color:#fff">
            <div class="user-block">
                <h3 class="box-title">
                    <i class="fa fa-tasks"></i> Form Soal Kuesioner </h3>
            </div>
            <!-- /.user-block -->
            <div class="box-tools">
            </div>
            <!-- /.box-tools -->
        </div>
        <!-- /.box-header -->
            <div class="box-body"> 
              @if ($errors->any())
                  <div class="alert alert-danger">
                      <ul>
                          @foreach ($errors->all() as $error)
                              <li style="background: transparent;border:solid #dd4b39 1px">{{ $error }}</li>
                          @endforeach
                      </ul>
                  </div>
              @endif


              <form  method="post" action="{{url('/ins-user/edit')}}" enctype="multipart/form-data">
                <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                <input type = "hidden" name = "id" value = "{{$data->id}}">
                <div class="box-body">
                  <div class="form-group">
                    <label>Nama :</label><br>
                    <input type="text" name="name"    value="{{$data->name}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Email :</label><br>
                    <input type="text" name="email"    value="{{$data->email}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>No Handphone :</label><br>
                    <input type="text" name="no_hp"    value="{{$data->no_hp}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Usia Responden :</label><br>
                    <input type="text" name="usia"    value="{{$data->usia}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Jenis Kelamin :</label><br>
                    <select class="form-control" name="jenis_kelamin">
                        <option value="Laki-laki" @if($data->jenis_kelamin=='Laki-laki') selected @endif >Laki-laki</option>
                        <option value="Perempuan" @if($data->jenis_kelamin=='Perempuan') selected @endif >Perempuan</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Agama :</label><br>
                    <select class="form-control" name="agama">
                        <option value="Islam" @if($data->agama=='Islam') selected @endif >Islam</option>
                        <option value="Kristen" @if($data->agama=='Kristen') selected @endif >Kristen</option>
                        <option value="Hindu" @if($data->agama=='Hindu') selected @endif >Hindu</option>
                        <option value="Budha" @if($data->agama=='Budha') selected @endif >Budha</option>
                        <option value="Katolik" @if($data->agama=='Katolik') selected @endif >Katolik</option>
                        <option value="Kong Hu Cu" @if($data->agama=='Kong Hu Cu') selected @endif >Kong Hu Cu</option>
                        <option value="Lainnya" @if($data->agama=='Lainnya') selected @endif >Lainnya</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Status Pernikahan :</label><br>
                    <select class="form-control" name="status_pernikahan">
                        <option value="Menikah" @if($data->status_pernikahan=='Menikah') selected @endif >Menikah</option>
                        <option value="Belum Menikah" @if($data->status_pernikahan=='Belum Menikah') selected @endif >Belum Menikah</option>
                        <option value="Pernah Menikah" @if($data->status_pernikahan=='Pernah Menikah') selected @endif>Pernah Menikah</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Pendidikan :</label><br>
                    <select class="form-control" name="pendidikan">
                        <option value="Tidak Sekolah / Tdk Tamat SD" @if($data->pendidikan=='Tidak Sekolah / Tdk Tamat SD') selected @endif >Tidak Sekolah / Tdk Tamat SD</option>
                        <option value="SD" @if($data->pendidikan=='SD') selected @endif >SD</option>
                        <option value="SLTP" @if($data->pendidikan=='SLTP') selected @endif >SLTP</option>
                        <option value="SLTA" @if($data->pendidikan=='SLTA') selected @endif>SLTA</option>
                        <option value="Diploma" @if($data->pendidikan=='Diploma') selected @endif>Diploma</option>
                        <option value="Sarjana" @if($data->pendidikan=='Sarjana') selected @endif>Sarjana</option>
                        <option value="Pasca Sarjana" @if($data->pendidikan=='Pasca Sarjana') selected @endif>Pasca Sarjana</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Pengeluaran Dana Perbulan :</label><br>
                    <input type="text" name="pengeluaran"    value="{{$data->pengeluaran}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Pekerjaan :</label><br>
                    <input type="text" name="pekerjaan"    value="{{$data->pekerjaan}}" class="form-control">
                  </div>
                  
                  <br><br>
                  <button class="btn btn-sm btn-primary"><i class="fa fa-save"></i> Simpan</button>
                </div>
              </form>
            </div>
 
        </div>
    </div>

  </section>
  <style>
      @media screen and (max-width: 1800px) {
        .imgss {width:270px;height:100px;}
      }

      @media screen and (max-width: 500px) {
        .imgss {width:50px;height:50px;}
      } 
      /* .imgss {width:1000px;height:50px;} */
  </style>
  @push('datatable')
  <script src="{{url('/bower_components/jquery.min.js')}}"></script>

  <script type="text/javascript">
    $(document).ready(function() {
        var count = 0;
        $("#add").click(function(){
            count += 1;
            $('#container').append(
                '<div class="form-group">'
                    +'<label>Jawaban Ke-'+count+' :</label><br>'
                    +'<input type="text" name="jawaban[]"    style="width:50.5%;display:inline" class="form-control" value="">&nbsp;'
                    +'<input type="text" name="nilai[]"     style="width:11%;display:inline" class="form-control" value="'+count+'">'  
                  +'</div>'  
                    
            );

        
        });

        $('#add').click();                                       
    });
                     
</script>
    <script>
        $(function () {
            $('#example1').DataTable()
            $('#example2').DataTable({
            'paging'      : true,
            'lengthChange': false,
            'searching'   : false,
            'ordering'    : true,
            'info'        : true,
            'autoWidth'   : false
            })
        })
    </script>
  @endpush
  @endsection