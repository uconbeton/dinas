@extends('appadmin')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="box box-widget ">
        <div class="box-header with-border" style="background: #644ad2;color:#fff">
            <div class="user-block">
                <h3 class="box-title">
                <i class="fa fa-tasks" ></i> List User Akses</h3>
            </div>
            <!-- /.user-block -->
            <div class="box-tools">
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
            <!-- /.box-tools -->
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <a href="{{url('/form-user')}}"><button class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Tambah Soal</button></a>
            <table id="datatabless" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th width="5%">No</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>No Hp</th>
                        <th>Act</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $no=>$o)
                        <tr>
                            <td>{{$no+1}}</td>
                            <td>{{$o->name}}</td>
                            <td>{{$o->email}}</td>
                            <td>{{$o->no_hp}}</td>
                            <td>
                                <a href="{{url('/edit-user/'.$o->id)}}"><i class="fa fa-edit"></i></a>_
                                <a href="{{url('/del-user/'.$o->id)}}"><i class="fa fa-times-circle"></i></a>
                            </td>
                            
                        </tr>

                        
                    @endforeach
                </tbody>
            
            </table>
              
        </div>
    </div>

  </section>
  @push('datatable')
 
    <script>
        $(function () {
            $('#datatabless').DataTable({
            'paging'      : true,
            'lengthChange': false,
            'searching'   : true,
            'ordering'    : true,
            'info'        : true,
            'autoWidth'   : false
            })
        })
    </script>
  @endpush
  @endsection