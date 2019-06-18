@extends('appadmin')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="box box-widget ">
        <div class="box-header with-border" style="background: #644ad2;color:#fff">
            <div class="user-block">
                <h3 class="box-title">
                    <i class="fa fa-tasks"></i> Email Broadcast </h3>
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


              <form  method="post" action="{{url('/kirim-email')}}" enctype="multipart/form-data">
                <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                <div class="box-body" style="border:solid 1px #e4d6d6">  
                    @foreach($data as $o)
                        <input type="checkbox" name="email[]"  value="{{$o->email}}-{{$o->no_hp}}">
                        <span class="btn btn-default btn-xs">{{$o->email}}</span><br>
                    @endforeach
                </div>
               
                   
                <div class="box-body pad">
                    <label>Isi Email :</label><br>
                    <textarea class="textarea" name="isi" placeholder="Place some text here"
                            style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                    
                </div>
                <div class="box-body"> 
                  <br><br>
                  <button class="btn btn-sm btn-primary"><i class="fa fa-save"></i> Kirim</button>
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