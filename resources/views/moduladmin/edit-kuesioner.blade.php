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


              <form  method="post" action="{{url('/edit-kuesioner')}}" enctype="multipart/form-data">
                <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                <input type = "hidden" name = "id" value = "{{$data->id}}">
                <div class="box-body">
                  <div class="form-group">
                    <label>Soal Kuesioner :</label><br>
                    <input type="text" name="soal"    value="{{$data->pertanyaan}}" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Tahapan :</label><br>
                    <select class="form-control" name="tahapan_id">
                    @foreach($tahapan as $tahap)
                        <option value="{{$tahap->id}}" @if($data->tahapan_id==$tahap->id) selected @endif >{{$tahap->tahapan}}</option>
                    @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Unsur :</label><br>
                    <select class="form-control" name="unsur_id">
                        @foreach($unsur as $unsur)
                            <option value="{{$unsur->id}}" @if($data->unsur_id==$unsur->id) selected @endif>U{{$unsur->id}} {{$unsur->nama}}</option>
                        @endforeach
                    </select>
                  </div>
                  <span class="btn btn-success btn-sm" id="add" style="margin-top:20px"><i class="fa fa-plus"></i> Tambah</span>
                  <input id="jum" type="text" value="0" style="height:32px;width:5px;border:solid 1px #fff;color:#fff"> 
                  <br>
                  @foreach($jawaban as $no=>$jawab)
                    <div class="form-group">
                        <label>Jawaban Ke-{{$no+1}} :</label><br>
                        <input type="text" name="jawaban[]"    style="width:50.5%;display:inline" class="form-control" value="{{$jawab->jawaban}}">&nbsp;
                        <input type="text" name="nilai[]"     style="width:11%;display:inline" class="form-control" value="{{$jawab->nilai}}">
                        <a href="{{url('/del-jawaban/'.$jawab->id.'/'.$data->id)}}"><i class="fa fa-minus-square"></i></a>  
                    </div> 
                  @endforeach
                  <div id="container" ></div>
                 


                  
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
        var count = {{$jumlah}};
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