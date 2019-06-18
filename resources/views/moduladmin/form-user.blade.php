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


              <form  method="post" action="{{url('/ins-user')}}" enctype="multipart/form-data">
                <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                <div class="box-body">
                  <div class="form-group">
                    <label>Nama :</label><br>
                    <input type="text" name="name"    value="{{old('name')}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Email :</label><br>
                    <input type="text" name="email"    value="{{old('email')}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>No Handphone :</label><br>
                    <input type="text" name="no_hp"    value="{{old('no_hp')}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Usia Responden :</label><br>
                    <input type="text" name="usia"    value="{{old('usia')}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Jenis Kelamin :</label><br>
                    <select class="form-control" name="jenis_kelamin">
                        <option value="Laki-laki">Laki-laki</option>
                        <option value="Perempuan">Perempuan</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Agama :</label><br>
                    <select class="form-control" name="agama">
                        <option value="Islam">Islam</option>
                        <option value="Kristen">Kristen</option>
                        <option value="Hindu">Hindu</option>
                        <option value="Budha">Budha</option>
                        <option value="Katolik">Katolik</option>
                        <option value="Kong Hu Cu">Kong Hu Cu</option>
                        <option value="Lainnya">Lainnya</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Status Pernikahan :</label><br>
                    <select class="form-control" name="status_pernikahan">
                        <option value="Menikah">Menikah</option>
                        <option value="Belum Menikah">Belum Menikah</option>
                        <option value="Pernah Menikah">Pernah Menikah</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Pendidikan :</label><br>
                    <select class="form-control" name="pendidikan">
                        <option value="Tidak Sekolah / Tdk Tamat SD">Tidak Sekolah / Tdk Tamat SD</option>
                        <option value="SD">SD</option>
                        <option value="SLTP">SLTP</option>
                        <option value="SLTA">SLTA</option>
                        <option value="Diploma">Diploma</option>
                        <option value="Sarjana">Sarjana</option>
                        <option value="Pasca Sarjana">Pasca Sarjana</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Pengeluaran Dana Perbulan :</label><br>
                    <input type="text" name="pengeluaran"    value="{{old('pengeluaran')}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Pekerjaan :</label><br>
                    <input type="text" name="pekerjaan"    value="{{old('pekerjaan')}}" class="form-control">
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