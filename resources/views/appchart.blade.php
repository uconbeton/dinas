<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>KOTA SERANG</title>
  <link rel="shortcut icon" type="image/x-icon" href="{{url('img/kota.png')}}">
  @include('styleadmin')
  <style>
      li{font-weight:bold;background: #f6f6ff;border: solid 1px white;}
      a li:hover{font-weight:bold;background: #f6f6ff;border: solid 1px white;}
  </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="../../index2.html" class="logo" style="background: #eaeaea">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini" ><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg" style="color: #1f1b1b;">DINAS DPMPTSP</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" style="background: #fff">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu" >
        <ul class="nav navbar-nav" >
          
          {{-- @include('notif') --}}
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu" style="background: #fff">
            <a href="#" class="dropdown-toggle" onclick="event.preventDefault();
            document.getElementById('logout-form').submit();">
              <img src="{{url('/img/log.png')}}" width="100px" height="100px" class="user-image" alt="User Image">
              <span class="hidden-xs">{{Auth::user()->name}}</span>
            </a>
                        
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>   
          </li>
          <!-- Control Sidebar Toggle Button -->
          {{-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> --}}
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar" style="background:#fff;">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel" style="background: #d2dee2;text-align: center;">
        
          <img src="{{url('/img/banten.png')}}" width="140px" height="140px"  alt="User Image">
        
        {{-- <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div> --}}
      </div>
      
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree" style="min-height: 660px;">
        <li class="header" style="background: #bfd2d8;text-align:center;text-transform:uppercase;font-size:14px">{{auth::user()->name}}</br>{{auth::user()->id}}</li>
        
          @include('sideadmin')
        {{-- @include('side') --}}
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="background: url(/img/bg.jpg);background-size:100%">
    <!-- content -->
        @yield('content')
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  @include('control')
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
@include('scriptchart')
<script>
  function angka(e) {
      if (!/^[0-9]+$/.test(e.value)) {
          e.value = e.value.substring(0,e.value.length-1);
      }
  }
</script>
</body>
</html>
