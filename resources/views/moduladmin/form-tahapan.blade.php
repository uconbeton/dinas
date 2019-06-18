@extends('appadmin')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="box box-widget ">
        <div class="box-header with-border" style="background: #644ad2;color:#fff">
            <div class="user-block">
                <h3 class="box-title">
                    <i class="fa fa-tasks"></i> Form Tahapan Soal Kuesioner </h3>
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


              <form  method="post" action="{{url('/ins-tahapan')}}" enctype="multipart/form-data">
                <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                <input type = "hidden" name = "id" value = "{{$id}}">
                <input type = "hidden" name = "act" value = "{{$act}}">
                <div class="box-body">
                  <div class="form-group">
                    <label>Tahapan :</label><br>
                    <input type="text" name="tahapan"    value="{{$tahapannya}}" class="form-control">
                  </div>
                  <br>
                  <br>
                  <button class="btn btn-sm btn-primary"><i class="fa fa-save"></i> Simpan</button>
                </div>
              </form>
            </div>
            <hr>
            <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th width="5%">No</th>
                            <th>Tahapan</th>
                            <th width="5%">STS</th>
                            <th width="10%">Act</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($tahapan as $no=>$user)
                            <tr>
                                <td>{{$no+1}}</td>
                                <td>{{$user->tahapan}}</td>
                                <td>
                                    @if($user->sts==0)
                                        <a href="{{url('/sts-tahapan/on/'.$user->id)}}"><span class="btn btn-sm btn-danger"><i class="fa fa-volume-off"></i></span></a>
                                    @else
                                        <a href="{{url('/sts-tahapan/off/'.$user->id)}}"><span class="btn btn-sm btn-primary"><i class="fa fa-volume-up"></i></span></a>
                                    @endif
                                </td>
                                <td>
                                    <a href="{{url('/form-tahapan/edit/'.$user->id)}}"><i class="fa fa-edit"></i></a>_
                                    <a href="{{url('/del-tahapan/'.$user->id)}}"><i class="fa fa-times-circle"></i></a>
                                </td>
                                
                            </tr>
    
                        @endforeach
                    </tbody>
                
                </table>
                  
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