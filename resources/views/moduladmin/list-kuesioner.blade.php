@extends('appadmin')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="box box-widget ">
        <div class="box-header with-border" style="background: #644ad2;color:#fff">
            <div class="user-block">
                <h3 class="box-title">
                <i class="fa fa-tasks" ></i> List-Kuesioner</h3>
            </div>
            <!-- /.user-block -->
            <div class="box-tools">
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
            <!-- /.box-tools -->
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <a href="{{url('/kuesioner-soal')}}"><button class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Tambah Soal</button></a>
            <table id="datatabless" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th width="5%">No</th>
                        <th>Pertanyaan</th>
                        <th></th>
                        <th>Act</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($kuesioner as $no=>$user)
                        <tr>
                            <td>{{$no+1}}</td>
                            <td><b>{{$user->unsur['nama']}} :</b> {{$user->pertanyaan}}</td>
                            <td>
                                <i class="fa fa-search" data-toggle="modal" data-target="#modal-default{{$no}}"></i>
                            </td>
                            <td>
                                <a href="{{url('/upd-kuesioner/'.$user->id)}}"><i class="fa fa-edit"></i></a>_
                                <a href="{{url('/del-kuesioner/'.$user->id)}}"><i class="fa fa-times-circle"></i></a>
                            </td>
                            
                        </tr>

                        <div class="modal fade" id="modal-default{{$no}}">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">{{$user->pertanyaan}}</h4>
                                </div>
                                <div class="modal-body">
                                    @foreach($jawaban->where('kuesioner_id',$user->id) as $jawab)
                                        @if($jawab->urut==0)
                                            A.{{$jawab->jawaban}} [{{$jawab->nilai}}]<br>
                                        @elseif($jawab->urut==1)
                                            B.{{$jawab->jawaban}} [{{$jawab->nilai}}]<br>
                                        @elseif($jawab->urut==3)
                                            C.{{$jawab->jawaban}} [{{$jawab->nilai}}]<br>
                                        @else
                                            D.{{$jawab->jawaban}} [{{$jawab->nilai}}]<br>
                                        @endif
                                    @endforeach
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
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