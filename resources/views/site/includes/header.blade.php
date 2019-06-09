<header id="header">
    <section class="top-row">
        <div class="container">
            <div class="left-box">
                <ul>
                    <li><a href="javascript:void(0)"><i class="fa fa-calendar" aria-hidden="true"></i>Events</a></li>
                    <li><a href="javascript:void(0)"><i class="fa fa-bank" aria-hidden="true"></i>Departments</a></li>
                    <li><a href="javascript:void(0)"><i class="fa fa-map-marker" aria-hidden="true"></i>Maps</a></li>
                    <li><a href="javascript:void(0)"><i class="fa fa-video-camera" aria-hidden="true"></i>News Room</a></li>
                    <li><a href="javascript:void(0)"><i class="fa fa-newspaper-o" aria-hidden="true"></i>Information</a></li>
                </ul>
            </div> 
            <div class="right-box text-right">
                <ul>
                    @if(isset($all_view['lang']))
                        @foreach($all_view['lang'] as $lang)
                        <li>
                            @if(Route::has('site.swap_language'))
                            <a href="{{ route('site.swap_language', ['lang_id'=>$lang->id])}}">@if(isset($lang->image))<img src="{{ $lang->image}}" alt="" />@endif &nbsp; {{ $lang->name }}</a>
                            @endif
                        </li>
                        @endforeach
                    @endif
                </ul>
                <a href="#" class="btn-style-1">Ask Question to Govt. </a> 
            </div>
        </div>
    </section>
    <section class="logo-row">
        <div class="container">
            @if(isset($all_view['setting']->logo))
            <strong class="logo"><a href="{{ route('site.index') }}"><img src="{{ asset($all_view['setting']->logo) }}" alt="img"></a></strong>
            @endif
            <div class="menu-col-top"> <a href="javascript:void(0)" class="btn-style-1">Facebook</a></div>&nbsp
            <div class="menu-col-top"> <a href="javascript:void(0)" class="btn-style-1">Twitter</a></div>
        </div>
        <div class="menu-col">
            <div class="container">
                <div class="btm-row">
                    {{-- <div class="cp-burger-nav">
                        <div id="cp_side-menu-btn" class="cp_side-menu"><a href="javascript:void(0)"><i class="fa fa-bars" aria-hidden="true"></i></a></div>
                        <div id="cp_side-menu"> <a href="javascript:void(0)" id="cp-close-btn" class="crose"><i class="fa fa-close"></i></a>
                            <div class="content mCustomScrollbar">
                                <div id="content-1" class="content">
                                    <div class="cp_side-navigation">
                                        @if(isset($data['menu']))
                                        <nav>
                                            <ul class="navbar-nav">
                                                @foreach($data['menu'] as $row)
                                                <li><a href="index.html">{{ $row->menu_name }}</a></li>
                                                @endforeach

                                                <li class="active"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">About <i class="fa fa-angle-down"></i></a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="javascript:void(0)">Introduction</a></li>
                                                        <li><a href="javascript:void(0)">Organizational Structure</a></li>
                                                        <li><a href="javascript:void(0)">Section/Division</a></li>
                                                        <li><a href="javascript:void(0)">Staff Detail</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </nav>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <strong class="copy">Contact: <b>+</b>123 4567 8910</strong> <strong class="copy">Email: <a href="mailto:"><span class="__cf_email__" data-cfemail="721b1c141d32151d0417001c1f171c065c111d1f">[info@foreignmentemploymentnepal.com]</span></a></strong>
                            <div class="sidebar-social">
                                <ul>
                                    <li><a href="javascript:void(0)"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-envelope" aria-hidden="true"></i></a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>

                    </div> --}}

                    <div class="header-search">
                        <div class="dropdown">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"> <i class="fa fa-search" aria-hidden="true"></i> </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li>
                                    <form action="{{ Route('site.search')}}" method="POST" role="search">
                                        {{ csrf_field() }}
                                        <input type="text" name="keyword" placeholder="Search..." required>
                                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <nav class="navbar navbar-inverse">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        </div>
                        <div id="navbar" class="collapse navbar-collapse">
                                @include('site.includes.nav')
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </section>
</header>