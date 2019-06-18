@extends('appadmin')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="box box-widget ">
        <div class="box-header with-border" style="background: #644ad2;color:#fff">
            <div class="user-block">
                <h3 class="box-title">
                    <i class="fa fa-tasks"></i> Rekapan Hasil Survey {{$tgl}}</h3>
            </div>
            <!-- /.user-block -->
            <div class="box-tools">
            </div>
            <!-- /.box-tools -->
        </div>
        <!-- /.box-header -->
            <div class="box-body"> 
                <form  method="post" action="{{url('/cari-view')}}" enctype="multipart/form-data">
                  <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                  <input type = "hidden" name = "id" value = "{{$id}}">
                    <div class="form-group">
                      <label>Tanggal Order:</label>
                      <div class="input-group date input-group-sm">
                            <input type="text" class="form-control" name="tanggal" id="datepicker">
                            <span class="input-group-btn">
                              <input type="submit" class="btn btn-info btn-flat" value="Cari">
                              <a href="{{url('/laporan_pdf/'.$id.'/'.$tgl)}}" class="btn btn-info btn-flat" target="_blank"><i class="fa fa-print"></i> Cetak</a>
                            </span>
                      </div>
                      
                    </div>
                </form>
                <table width="100%" border="1">
                  <tr>
                    <td class="tdr">Id</td>
                    <td class="tdr">Unsur</td>
                    <td class="tdr">Nilai Unsur</td>
                    <td class="tdr">NRR/Unsur</td>
                    <td class="tdr">NRR Tertimbang</td>
                    <td class="tdr">Mutu Pelayanan</td>
                    <td class="tdr">Persen</td>
                  </tr>
                  @foreach($unsur as $unsur)
                      <tr>
                        <td class="tdrs">{{$unsur->id}}</td>
                        <td class="tdrs">{{$unsur->nama}}</td>
                        <td class="tdrs">{{$total->shift()['nilai']}}</td>
                        <td class="tdrs">{{$nrr->shift()['nrr']}}</td>
                        <td class="tdrs">{{$nrrtimbang->shift()['nrr']}}</td>
                        <td class="tdrs"></td>
                        <td class="tdrs"></td>
                      </tr>
                  @endforeach
                  <tr>
                      <td class="tdrs" colspan="4">Total</td>
                      <td class="tdrs">{{$ratarata}}</td>
                      <td class="tdrs"></td>
                      <td class="tdrs"></td>
                  </tr>
                  <tr>
                      <td class="tdrs" colspan="4">IKM UNIT PELAYANAN ({{$ratarata}} x 25)</td>
                      <td class="tdrs">{{$totratarata}}</td>
                      <td class="tdrs">
                        @if($totratarata>=40)
                            C (Kurang Baik)
                        @elseif($totratarata>=50)
                            B (Baik)
                        @elseif($totratarata>=80)
                            A (Sangat Baik)
                        @else
                            D (Tidak Baik)
                        @endif

                      </td>
                      <td class="tdrs"></td>
                    </tr>
                </table>
            </div>
 
        </div>
    </div>

  </section>
  <style>
      @media screen and (max-width: 1800px) {
        .imgss {width:270px;height:100px;}
      }

      .tdr{
          text-align:center;
          padding:5px;
          font-weight:bold;
          background: #ffd87d;
      }
      .tdrs{
          padding:5px;
      }
      @media screen and (max-width: 500px) {
        .imgss {width:50px;height:50px;}
      } 
      /* .imgss {width:1000px;height:50px;} */
  </style>
  @push('datatable')
    <script>
        $(document).ready(function(){
            $('#nilai_kwitansi').keyup(function(){
                var mu    = $('#id_matauang').val();
                var res   = $('#nilai_kwitansi').val();
                var dakwi = $('#nilai_kwitansi').val();
                var smua  = eval($('#kwitansi').val()) + eval($('#totfak').val());
                if(mu == 'IDR'  ){var hsl = res;}
                else{var hsl = dakwi;}
                
                $('#kwitansi').attr('value', dakwi);
                $('#all').attr('value', smua);
            });
      
        });


        function rekening() 
          {
            var vendor=$('#vendor').val();
            window.open("{{url('/poprekening/')}}/"+vendor+"", "list", "width=800,height=420");
          }

        function domkab() 
          {
            var id= $('#dom_prov_id').val();
            window.open("{{url('/dk/')}}/"+id+"", "list", "width=800,height=420");
           
          }

        function domkec() 
          {
            var id= $('#dom_kab_id').val();
            window.open("{{url('/dkec/')}}/"+id+"", "list", "width=800,height=420");
           
          }

        function domkel() 
          {
            var id= $('#dom_kec_id').val();
            window.open("{{url('/dkel/')}}/"+id+"", "list", "width=800,height=420");
           
          }

        function ktpprov() 
          {
            window.open("{{url('/kp')}}", "list", "width=800,height=420");
          }

        function ktpkab() 
          {
            var id= $('#ktp_prov_id').val();
            window.open("{{url('/kk/')}}/"+id+"", "list", "width=800,height=420");
           
          }

        function ktpkec() 
          {
            var id= $('#ktp_kab_id').val();
            window.open("{{url('/kkec/')}}/"+id+"", "list", "width=800,height=420");
           
          }

        function ktpkel() 
          {
            var id= $('#ktp_kec_id').val();
            window.open("{{url('/kkel/')}}/"+id+"", "list", "width=800,height=420");
           
          }
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