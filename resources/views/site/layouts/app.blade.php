<!doctype html>
<html lang="@if(isset($all_view['loacale'])){{ $all_view['locale'] }}@endif">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @if(isset($all_view['setting']->site_name))
    <meta name="author" content="{{ $all_view['setting']->site_name }}">
    @endif
    @if(isset($all_view['setting']->logo))
    <link rel="shortcut icon" href="{{ asset($all_view['setting']->logo) }}" type="image/x-icon">
    <link rel="icon" href="{{ asset($all_view['setting']->logo)  }}" type="image/x-icon">
    @endif
    @if(isset($all_view['setting']->site_title))
    <title>{{ $all_view['setting']->site_title }}</title>
    @endif
    @if(isset($all_view['setting']->meta_keyword))
    <meta name="keywords" content="{{ $all_view['setting']->meta_keyword }}">
    @endif
    <meta name="author" content="Admin">
    @if(isset($all_view['setting']->site_description))
    <meta name="description" content="{{ $all_view['setting']->site_description }}">
    @endif
 
    <!-- Goole Fonts -->

    <!-- Bootstrap -->
    <link href="{{ asset('assets/site/assets/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="{{ asset('assets/site/assets/fonts/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">

    <link href="{{ asset('assets/site/assets/css/owl.carousel.min.css') }}" rel="stylesheet" type="text/css">

    <link href="{{ asset('assets/site/assets/css/animate.css') }}" rel="stylesheet" type="text/css">

    <!--Custom CSS -->
    <link href="{{ asset('assets/site/assets/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/site/assets/css/color.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets/site/assets/css/responsive.css') }}" rel="stylesheet" type="text/css">

    @yield('css')
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <div id="wrapper">
        @include('site.includes.header')

        @yield('content')

        
        @include('site.includes.footer')
    </div>


    <script src="{{ asset('assets/site/assets/js/jquery-1.11.3.js') }}"></script>

    <script src="{{ asset('assets/site/assets/js/bootstrap.min.js') }}"></script>

    <script src="{{ asset('assets/site/assets/js/owl.carousel.min.js') }}"></script>

    <script src="{{ asset('assets/site/assets/js/custom.js') }}"></script>

    @yield('js')
</body>

</html>