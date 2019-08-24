<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="LOCHAN">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="{{ asset('assets/dcms/assets/images/favicon.ico') }}">

    <title>Login | UBOLD</title>

    <!-- App css -->
    <link href="{{ asset('assets/dcms/assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/dcms/assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/dcms/assets/css/app.min.css') }}" rel="stylesheet" type="text/css" />



    @yield('css')

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

  <body class="authentication-bg authentication-bg-pattern">
    <div class="account-pages mt-5 mb-5">
        <div class="container">
            <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-pattern">

                            <div class="card-body p-4">

                                <div class="text-center w-75 m-auto">
                                    {{-- <a href="index.html">
                                        <span><img src="assets/images/logo-dark.png" alt="" height="22"></span>
                                    </a> --}}
                                    <h3 class="text-muted mb-4 mt-3"><strong>{{ __('UBOLD:') }}</strong>{{ __('Sign In') }}</h3>
                                </div>

                                    @yield('content')

                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                    </div>
                    <!-- end container -->
            </div>
            <!-- end page -->
        </div>
    </div>

     <!-- Vendor js -->
     <script src="{{ asset('assets/dcms/assets/js/vendor.min.js') }}"></script>

     <!-- App js -->
     <script src="{{ asset('assets/dcms/assets/js/app.min.js') }}"></script>

   @yield('js')

{{-- script-lochna-custom-js  --}}
    <script type="text/javascript">

      toastr.options = {
    "closeButton": true,
    "debug": false,
    "progressBar": false,
    "positionClass": "toast-top-right",
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
    }
    </script>
  </body>

</html>
