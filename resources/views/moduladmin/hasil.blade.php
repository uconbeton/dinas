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
            
            <hr>
            <div class="box-body">
                
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