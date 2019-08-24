<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">

<head>
        <!--ajax-request csrf-token-->
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Lochan">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="{{ asset('assets/dcms/assets/images/favicon.ico') }}">

    @if(isset($_panel))
    <title>{{ $_panel }} | UBOLD</title>
    @else
    <title>DCMS</title>
    @endif

    <!-- Plugins css -->
    <link href="{{ asset('assets/dcms/assets/libs/flatpickr/flatpickr.min.css') }}" rel="stylesheet" type="text/css" />

    <!-- App CSS -->
    <link href="{{ asset('assets/dcms/assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/dcms/assets/css/icons.min.css') }}" rel="stylesheet">
       <!--toastr-->
       <link href="{{ asset('assets/dcms/assets/toastr-master/toastr.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/dcms/assets/css/app.min.css') }}" rel="stylesheet" />



    @yield('css')



    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  <!-- Begin page -->
  <div id="wrapper">

      <!--header start-->
        @include('dcms.includes.header')
      <!--header end-->

      <!--sidebar start-->
        @include('dcms.includes.sidebar')
      <!--sidebar end-->

      <!--main content start-->
    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">
                @yield('content')
            </div>
            {{-- end of content --}}
        </div>
    </div>

      <!--main content end-->

      <!-- Right Slidebar start -->
        {{-- @include('dcms.includes.right_sidebar') --}}
      <!-- Right Slidebar end -->

      <!--footer start-->
        @include('dcms.includes.footer')
      <!--footer end-->

    </div>

         <!-- Vendor js -->
    <script src="{{ asset('assets/dcms/assets/js/vendor.min.js') }}"></script>
    <script src="{{ asset('assets/dcms/assets/libs/jquery-knob/jquery.knob.min.js') }}"></script>
    <script src="{{ asset('assets/dcms/assets/libs/jquery-sparkline/jquery.sparkline.min.js') }}"></script>
    {{-- <script src="{{ asset('assets/dcms/assets/libs/flot-charts/jquery.flot.js') }}"></script>
    <script src="{{ asset('assets/dcms/assets/libs/flot-charts/jquery.flot.time.js') }}"></script>
    <script src="{{ asset('assets/dcms/assets/libs/flot-charts/jquery.flot.tooltip.min.js') }}"></script>
    <script src="{{ asset('assets/dcms/assets/libs/flot-charts/jquery.flot.selection.js') }}"></script>
    <script src="{{ asset('assets/dcms/assets/libs/flot-charts/jquery.flot.crosshair.js') }}"></script> --}}

    <!-- Dashboar 1 init js-->
    <script src="{{ asset('assets/dcms/assets/js/pages/dashboard-1.init.js') }}"></script>
 <!-- Chart JS -->
 <script src="{{ asset('assets/dcms/assets/libs/chart-js/Chart.bundle.min.js') }}"></script>

 <!-- Init js -->
 <script src="{{ asset('assets/dcms/assets/libs/chart-js/utils.js') }}"></script>
     <!--toastr-->
   <script src="{{ asset('assets/dcms/assets/toastr-master/toastr.js') }}"></script>
    <!-- App js-->
    <script src="{{ asset('assets/dcms/assets/js/app.min.js') }}"></script>
    <script src="{{ asset('assets/dcms/dm_js/app.js') }}"></script>

    @yield('js')
  </body>
</html>
