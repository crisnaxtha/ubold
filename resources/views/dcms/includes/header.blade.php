 <!-- Topbar Start -->
 <div class="navbar-custom">
    <ul class="list-unstyled topnav-menu float-right mb-0">
            <li class="d-none d-sm-block">
                <form class="app-search">
                    <div class="app-search-box">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search...">
                            <div class="input-group-append">
                                <button class="btn" type="submit">
                                    <i class="fe-search"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </li>
            <li style="padding-top:25px;"><strong>{{__('Role')}}:</strong>&nbsp;<?php dm_userRole(Auth::user()->role) ?></li>
            {{-- language change  --}}
            <li class="dropdown notification-list">

                  <a class="nav-link dropdown-toggle  waves-effect waves-light" data-toggle="dropdown" class="dropdown-toggle" href="#">
                      <span class="pro-user-name ml-1"><?php use App\Http\Controllers\Dcms\HomeController; echo HomeController::langName(); ?><i class="mdi mdi-chevron-down"></i></span>

                  </a>
                  <div class="dropdown-menu dropdown-menu-right">
                      @if(isset($all_view['lang']))
                          @foreach($all_view['lang'] as $lang)
                              <a class="dropdown-header noti-title" href="{{ route('dcms.swap_language', ['lang_id'=>$lang->id])}}">&nbsp;{{ $lang->name }}</a>
                          @endforeach
                      @endif
                  </div>
              </li>
            <!-- user login dropdown start-->
            <li class="dropdown notification-list">
                <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown" class="dropdown-toggle" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                    @if(Auth::user()->avatar)
                    <img alt="" src="{{ asset(Auth::user()->avatar) }}" height="29" width="29" class="rounded-circle">
                    @else
                    <img alt="" src="{{ asset('assets/dcms/img/lochan.png') }}" height="29" width="29" class="rounded-circle">
                    @endif
                    <span class="pro-user-name ml-1">{{ Auth::user()->name }}<i class="mdi mdi-chevron-down"></i></span>

                </a>
                <ul class="dropdown-menu  dropdown-menu-right profile-dropdown ">
                    <!-- item-->
                    <div class="dropdown-header noti-title">
                        <h6 class="text-overflow m-0">Welcome !</h6>
                    </div>

                    @if(route::has('dcms.user_profile.show'))
                    <a class="dropdown-item notify-item" href="{{ route('dcms.user_profile.show') }}"><i class=" fa fa-user"></i>Profile</a></li>
                    @endif
                    <a class="dropdown-item notify-item" href="{{ route('logout') }}"><i class="fa fa-key"></i> Log Out</a>
                </ul>
            </li>
            <!-- user login dropdown end -->
    </ul>

    <!-- LOGO -->
    <div class="logo-box">
        <a href="index.html" class="logo text-center">
            <span class="logo-lg">
                {{-- <img src="assets/images/logo-light.png" alt="" height="18"> --}}
                <span class="logo-lg-text-light">UBold</span>
            </span>
            <span class="logo-sm">
                <span class="logo-lg-text-light">U</span>
                {{-- <img src="assets/images/logo-sm.png" alt="" height="24"> --}}
            </span>
        </a>
    </div>

    <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
        <li>
            <button class="button-menu-mobile waves-effect waves-light">
                <i class="fe-menu"></i>
            </button>
        </li>

        <li class="dropdown d-none d-lg-block">
            <a class="nav-link"  href="{{ route('site.index') }}" target="_blank">
                <i class="fa fa-home"></i>
                <span class="">{{__('View Site')}}</span>
            </a>
        </li>

        <li>
                <a class="nav-link dropdown-toggle  waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                        <i class=" fas fa-file-image"></i>
                        <span class="badge badge-danger rounded-circle noti-icon-badge">9</span>
                </a>
        </li>
        <li>
                <a class="nav-link dropdown-toggle  waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                        <i class="fas fa-file"></i>
                        <span class="badge badge-danger rounded-circle noti-icon-badge">9</span>
                </a>
        </li>
        <li>
                <a class="nav-link dropdown-toggle  waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                        <i class=" fas fa-envelope"></i>
                        <span class="badge badge-danger rounded-circle noti-icon-badge">9</span>
                </a>

        </li>
    </ul>
</div>
<!-- end Topbar -->


