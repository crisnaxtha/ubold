<!-- ========== Left Sidebar Start ========== -->
<div class="left-side-menu">

    <div class="slimscroll-menu">

        <!--- Sidemenu -->
        <div id="sidebar-menu">

            <ul class="metismenu" id="side-menu">

                <li class="menu-title">Navigation</li>


                @if(Route::has('dcms.dashboard'))
                <li><a class="{{ ($_panel == 'Home') ? 'active' : '' }}" href="{{ URL::route('dcms.dashboard') }}"><i class="fe-airplay"></i><span>{{__('Dashboard')}}</span></a></li>
                @endif
                @if(Route::has('dcms.post.index'))
                <li><a href="{{ URL::route('dcms.post.index') }}" class="{{ ($_panel == 'Posts') ? 'active' : '' }}"><i class="fa fa-book"></i><span>{{__('Posts')}}</span></a></li>
                @endif
                @if(Route::has('dcms.category.index'))
                <li><a href="{{ URL::route('dcms.category.index') }}" class="{{ ($_panel == 'Category') ? 'active' : '' }}"><i class="fa fa-list-alt"></i><span>{{__('Categories')}}</span></a></li>
                @endif
                @if( Route::has('dcms.page.index'))
                <li><a class="{{ ($_panel == 'Pages') ? 'active' : '' }}" href="{{ URL::route('dcms.page.index') }}" ><i class="fe-package"></i><span>{{__('Pages')}}</span></a></li>
                @endif

                @if( Route::has('dcms.slider.index'))
                <li><a class="{{ ($_panel == 'Sliders') ? 'active' : '' }}" href="{{ URL::route('dcms.slider.index') }}" ><i class=" fas fa-arrows-alt-h"></i><span>{{__('Sliders')}}</span></a></li>
                @endif
                @if( Route::has('dcms.link.index'))
                <li><a class="{{ ($_panel == 'Links') ? 'active' : '' }}" href="{{ URL::route('dcms.link.index') }}" ><i class="fa fa-link"></i><span>{{__('Links')}}</span></a></li>
                @endif
                @if( Route::has('dcms.album.index'))
                <li><a class="{{ ($_panel == 'Album' || $_panel == 'Gallery') ? 'active' : '' }}" href="{{ URL::route('dcms.album.index') }}" ><i class="fas fa-camera-retro"></i><span>{{__('Photo Album')}}</span></a></li>
                @endif
                @if(Route::has('dcms.blog.index'))
                <li><a class="{{ ($_panel == 'Blogs') ? 'active' : '' }}" href="{{ URL::route('dcms.blog.index') }}"><i class="fa fa-book"></i><span>Videos</span></a></li>
                @endif
                {{-- Check if the user is admin or super-admin  --}}
                @if(Auth::user()->role == 'super-admin' || Auth::user()->role == 'admin')
                    @if( Route::has('dcms.menu.index'))
                    <li><a class="{{ ($_panel == 'Menus') ? 'active' : '' }}" href="{{ URL::route('dcms.menu.index') }}" ><i class="fa fa-bars"></i><span>{{__('Menus')}}</span></a></li>
                    @endif
                    @if( Route::has('dcms.branch.index'))
                    <li><a class="{{ ($_panel == 'Office Branch') ? 'active' : '' }}" href="{{ URL::route('dcms.branch.index') }}" ><i class="fa fa-sitemap"></i><span>{{__('Branch Office')}}</span></a></li>
                    @endif
                    @if( Route::has('dcms.staff.index'))
                    <li><a class="{{ ($_panel == 'Staff') ? 'active' : '' }}" href="{{ URL::route('dcms.staff.index') }}" ><i class="fa fa-users"></i><span>{{__('Staff')}}</span></a></li>
                    @endif
                    <li class="sub-menu">
                        <a href="javascript:;" class="{{ ($_base_route == 'dcms.setting') ? 'active' : '' }}"><i class="fe-settings"></i>
                            <span class="menu-arrow"></span>
                            <span>{{ __('Settings') }}</span>
                        </a>
                        <ul class="nav-second-level" aria-expanded="false">
                            @if(Route::has('dcms.setting.index'))
                                <li class="{{ ($_panel == 'Setting') ? 'active' : '' }}"><a href="{{ URL::route('dcms.setting.index') }}">{{ __('General Settings') }}</a></li>
                            @endif
                            @if(Route::has('dcms.setting.about.index'))
                                <li class="{{ ($_panel == 'About') ? 'active' : '' }}"><a href="{{ URL::route('dcms.setting.about.index') }}">{{ __('About Us') }}</a></li>
                            @endif
                            @if(Route::has('dcms.setting.contact.index'))
                                <li class="{{ ($_panel == 'Contact') ? 'active' : '' }}"><a href="{{ URL::route('dcms.setting.contact.index') }}">{{ __('Contact Info') }}</a></li>
                            @endif
                            @if(Route::has('dcms.setting.social.index'))
                                <li class="{{ ($_panel == 'Social Profile') ? 'active' : '' }}"><a href="{{ URL::route('dcms.setting.social.index') }}">{{ __('Social Linkss') }}</a></li>
                            @endif
                        </ul>
                    </li>
                @endif
                {{-- END::Check if the user is admin or super-admin  --}}
                {{-- Check if the user is SUPER-ADMIN --}}
                @if(Auth::user()->role == "super-admin")
                    @if( Route::has('dcms.user.index'))
                    <li><a class="{{ ($_panel == 'Users') ? 'active' : '' }}" href="{{ URL::route('dcms.user.index') }}" ><i class="fa fa-user"></i><span>{{__('Users')}}</span></a></li>
                    @endif
                    @if( Route::has('dcms.tracker.index'))
                    <li><a class="{{ ($_panel == 'Tracker') ? 'active' : '' }}" href="{{ URL::route('dcms.tracker.index') }}" ><i class="fa fa-map-marker"></i><span>{{__('User Tracker')}}</span></a></li>
                    @endif
                    @if( Route::has('dcms.database.index'))
                    <li><a class="{{ ($_panel == 'DB Backup') ? 'active' : '' }}" href="{{ URL::route('dcms.database.index') }}" ><i class=" fas fa-file-download"></i><span>{{__('DB Backup')}}</span></a></li>
                    @endif
                    @if(Route::has('dcms.language.index'))
                    <li><a class="{{ ($_panel == 'Language') ? 'active' : '' }}" href="{{ URL::route('dcms.language.index') }}" ><i class="fa fa-globe"></i><span>{{__('Language')}}</span></a></li>
                    @endif
                @endif
                {{--  END:: Check if the user is SUPER-ADMIN --}}
            </ul>

        </div>
        <!-- End Sidebar -->

        <div class="clearfix"></div>

    </div>
    <!-- Sidebar -left -->

</div>
<!-- Left Sidebar End -->
