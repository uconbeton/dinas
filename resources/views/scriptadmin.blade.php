<!-- jQuery 3 -->
<script src="{{url('/bower_components/jquery/dist/jquery.min.js')}}"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{url('/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<!-- Select2 -->
<script src="{{url('/bower_components/select2/dist/js/select2.full.min.js')}}"></script>
<!-- AdminLTE dattable -->
<script src="{{url('/bower_components/datatables.net/js/jquery.dataTables.min.js')}}"></script>
<script src="{{url('/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
@stack('datatable')

<!-- InputMask -->
<script src="{{url('/plugins/input-mask/jquery.inputmask.js')}}"></script>
<script src="{{url('/plugins/input-mask/jquery.inputmask.date.extensions.js')}}"></script>
<script src="{{url('/plugins/input-mask/jquery.inputmask.extensions.js')}}"></script>

<!-- date-range-picker -->
<script src="{{url('/bower_components/moment/min/moment.min.js')}}"></script>
<script src="{{url('/bower_components/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
<!-- bootstrap datepicker -->
<script src="{{url('/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
<!-- bootstrap color picker -->
<script src="{{url('/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js')}}"></script>
<!-- bootstrap time picker -->
<script src="{{url('/plugins/timepicker/bootstrap-timepicker.min.js')}}"></script>
<!-- SlimScroll -->
<script src="{{url('/bower_components/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
<!-- iCheck 1.0.1 -->
<script src="{{url('/plugins/iCheck/icheck.min.js')}}"></script>
<!-- FastClick -->
<script src="{{url('/bower_components/fastclick/lib/fastclick.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{url('/dist/js/adminlte.min.js')}}"></script>

<!-- Page script -->

<script>
  // $(function () {
  //   //Initialize Select2 Elements
  //   $('.select2').select2()

  //   //Datemask dd/mm/yyyy
  //   $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
  //   //Datemask2 mm/dd/yyyy
  //   $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
  //   //Money Euro
  //   $('[data-mask]').inputmask()

  //   //Date range picker
  //   $('#reservation').daterangepicker()
  //   //Date range picker with time picker
  //   $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
  //   //Date range as a button
  //   $('#daterange-btn').daterangepicker(
  //     {
  //       ranges   : {
  //         'Today'       : [moment(), moment()],
  //         'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
  //         'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
  //         'Last 30 Days': [moment().subtract(29, 'days'), moment()],
  //         'This Month'  : [moment().startOf('month'), moment().endOf('month')],
  //         'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
  //       },
  //       startDate: moment().subtract(29, 'days'),
  //       endDate  : moment()
  //     },
  //     function (start, end) {
  //       $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
  //     }
  //   )
   
    //Date picker
    $('#datepicker').datepicker({
      // autoclose: true
      format: 'yyyy-mm-dd',
      startDate: '-3d'
    })
    $('#datepicker0').datepicker({
      // autoclose: true
      format: 'yyyy-mm-dd',
      startDate: '-3d'
    })
    $('#datepicker1').datepicker({
      // autoclose: true
      format: 'yyyy-mm-dd',
      startDate: '-3d'
    })
    $('#datepicker2').datepicker({
      // autoclose: true
      format: 'yyyy-mm-dd',
      startDate: '-3d'
    })
    $('#datepicker3').datepicker({
      // autoclose: true
      format: 'yyyy-mm-dd',
      startDate: '-3d'
    })
    $('#datepicker4').datepicker({
      // autoclose: true
      format: 'yyyy-mm-dd',
      startDate: '-3d'
    })

    //iCheck for checkbox and radio inputs
    // $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
    //   checkboxClass: 'icheckbox_minimal-blue',
    //   radioClass   : 'iradio_minimal-blue'
    // })
    // //Red color scheme for iCheck
    // $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
    //   checkboxClass: 'icheckbox_minimal-red',
    //   radioClass   : 'iradio_minimal-red'
    // })
    // //Flat red color scheme for iCheck
    // $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
    //   checkboxClass: 'icheckbox_flat-green',
    //   radioClass   : 'iradio_flat-green'
    // })

    // //Colorpicker
    // $('.my-colorpicker1').colorpicker()
    // //color picker with addon
    // $('.my-colorpicker2').colorpicker()

    // //Timepicker
    // $('.timepicker').timepicker({
    //   showInputs: false
    // })
  })
</script>