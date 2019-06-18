<!doctype html>
<html >

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>KOTA SERANG- Kuesioner</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{url('img/kota.png')}}">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @include('style')
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Start Header Top Area -->
    <div class="header-top-area" >
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                   
                        <a href="#"><img src="img/dinaspmp2.png" alt="" width="100%" height="50px" /></a>
                    
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="header-top-menu">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="width:90%;float:left;margin-top:1px;">
            <marquee style="background: #10ad86;padding:3px">Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu Kota Serang * Kawasan Pusat Pemerintahan Provinsi Banten (KP3B), JL Tubagus Syeh Nawawi, Albantani No.1, Km. 2, Curug, Sukajaya, Serang, Sukajaya, Curug, Kota Serang, Banten 42171 </marquee>
    </div>
    <div style="width:10%;float:right;padding:1.5px;background:#10ad86;text-align:right;margin-top:1px;">
            <button class="btn btn-primary notika-btn-primary btn-xs waves-effect" style="width:100%;background:#10ad86"><i class="notika-icon notika-left-arrow"></i> Logout</button>
    
    </div>
    
    <!-- End Header Top Area -->
    {{-- @include('side') --}}
	
    @yield('konten')
   
    <div class="footer-copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2019 
. Kota Serang-Banten. Template by <a href="https://colorlib.com">Dinas DPMPTSP</a>.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Footer area-->
    @include('script')
    
</body>

</html>