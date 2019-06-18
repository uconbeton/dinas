@extends('appadmin')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="box box-widget ">
        <div class="box-header with-border" style="background: #644ad2;color:#fff">
            <div class="user-block">
                <h3 class="box-title">
                    <i class="fa fa-tasks"></i> Add Bukti Potong </h3>
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


              <form  method="post" action="{{url('/insbttd')}}" enctype="multipart/form-data">
                <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                <div class="box-body">
                  <div class="form-group">
                    <label>Vendor :</label><br>
                    <input type="text" name="vendor_id"  id="vendor" readonly   style="width:11%;display:inline" class="form-control" value="{{auth::user()->username}}">
                    <input type="text" name="nama_vendor"  readonly  style="width:88.5%;display:inline" class="form-control" value="{{auth::user()->name}}">
                  </div>
                  <div class="form-group">
                    <label>No. NPWP :</label><br>
                    <input type="text" name="npwp"    value="{{auth::user()->npwp}}" class="form-control">
                  </div>

                  <div class="form-group">
                    <label>Tanggal Faktur Pajak:</label>
                    <div class="input-group date">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="text" class="form-control pull-right" id="datepicker" name="tgl_faktur" value="{{old('tgl_faktur')}}" >
                    </div>
                  </div>
                  
                  
                  <div class="form-group">
                    <label>Nomor Rekening:</label>
                    <div class="input-group date">
                      <div class="input-group-addon">
                        <i class="fa fa-search" onclick="rekening();"></i>
                      </div>
                      <input type="text" class="form-control pull-right" readonly onclick="rekening();"  name="rekening" value="{{old('rekening')}}" id="rekening">
                      <input type="hidden" class="form-control pull-right"  name="no_rek" id="nomor_rekening" value="{{old('no_rek')}}" >
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Nilai Invoice (DPP + PPN):</label>
                    <input type="text" onkeyup="angka(this);" name="nilai_faktur" value="{{old('nilai_faktur')}}" class="form-control" >
                  </div>
                  <div class="form-group">
                    <label>No. Kwitansi & No.PO/Kontrak:</label>
                    <input type="text" name="no_kwitansi"  class="form-control" value="{{old('no_kwitansi')}}">
                  </div>
                  <div class="form-group">
                    <label>No. Faktur Pajak:</label>
                    <input type="text" name="no_faktur"  class="form-control" value="{{old('no_faktur')}}">
                  </div>
                  <div class="form-group">
                    <label>Email / Telp / Fax Vendor:</label>
                    <input type="text" name="email"  class="form-control" value="{{old('email')}}">
                  </div>
                  {{-- <div class="form-group">
                    <label>Jenis Dokumen Tagihan:</label>
                    <select name="id_tagihan" class="form-control" >
                      @foreach($tagihan as $tagihan)
                      <option value="{{$tagihan->id_tagihan}}" >{{$tagihan->tagihan}}</option>
                      @endforeach
                    </select>
                  </div>
                  
                   --}}
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