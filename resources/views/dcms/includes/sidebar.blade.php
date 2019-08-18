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
                <li class="sub-menu {{ ($_panel == 'Posts' || $_panel == 'Category' || $_panel == 'Pages') ? 'active' : '' }}">
                    <a href="javascript:;" class="{{ ($_panel == 'Posts' || $_panel == 'Category' || $_panel == 'Pages') ? 'active' : '' }}"><i class="far fa-gem"></i>
                        <span class="menu-arrow"></span>
                        <span>{{ __('Content') }}</span>
                    </a>
                    <ul class="nav-second-level" aria-expanded="false">
                        @if(Route::has('dcms.post.index'))
                        <li class="{{ ($_panel == 'Posts') ? 'active' : '' }}"><a href="{{ URL::route('dcms.post.index') }}" ><i class="fa fa-book"></i>&nbsp;&nbsp;<span>{{__('Posts')}}</span></a></li>
                        @endif
                        @if(Route::has('dcms.category.index'))
                        <li class="{{ ($_panel == 'Category') ? 'active' : '' }}"><a href="{{ URL::route('dcms.category.index') }}" ><i class="fa fa-list-alt"></i>&nbsp;&nbsp;<span>{{__('Categories')}}</span></a></li>
                        @endif
                        @if( Route::has('dcms.page.index'))
                        <li class="{{ ($_panel == 'Pages') ? 'active' : '' }}"><a  href="{{ URL::route('dcms.page.index') }}" ><i class="fe-package"></i>&nbsp;&nbsp;<span>{{__('Pages')}}</span></a></li>
                        @endif
                    </ul>
                </li>

                <li class="sub-menu {{ ($_panel == 'Album Category' || $_panel == 'Album' || $_panel == 'Videos') ? 'active' : '' }}">
                    <a href="javascript:;" class="{{ ($_panel == 'Album Category' || $_panel == 'Album' || $_panel == 'Videos') ? 'active' : '' }}"><i class="fas fa-vr-cardboard"></i>
                        <span class="menu-arrow"></span>
                        <span>{{ __('Multimedia') }}</span>
                    </a>
                    <ul class="nav-second-level" aria-expanded="false">
                        @if( Route::has('dcms.album_category.index'))
                        <li><a class="{{ ($_panel == 'Album Category') ? 'active' : '' }}" href="{{ URL::route('dcms.album_category.index') }}" ><i class="fas fa-camera-retro"></i>&nbsp;&nbsp;<span>{{__('Album Category')}}</span></a></li>
                        @endif
                        @if( Route::has('dcms.album.index'))
                        <li><a class="{{ ($_panel == 'Album' || $_panel == 'Gallery') ? 'active' : '' }}" href="{{ URL::route('dcms.album.index') }}" ><i class="fas fa-images"></i>&nbsp;&nbsp;<span>{{__('Photo Album')}}</span></a></li>
                        @endif
                        @if(Route::has('dcms.blog.index'))
                        <li><a class="{{ ($_panel == 'Videos') ? 'active' : '' }}" href="{{ URL::route('dcms.blog.index') }}"><i class="fas fa-video"></i>&nbsp;&nbsp;<span>Videos</span></a></li>
                        @endif
                    </ul>
                </li>

                <li class="sub-menu {{ ($_panel == 'Sliders' || $_panel == 'Links' || $_panel == 'Services' || $_panel == 'Pop Up') ? 'active' : '' }}">
                    <a href="javascript:;" class="{{ ($_panel == 'Sliders' || $_panel == 'Links' || $_panel == 'Services') ? 'active' : '' }}"><i class="fas fa-cart-plus"></i>
                        <span class="menu-arrow"></span>
                        <span>{{ __('Accessories ') }}</span>
                    </a>
                    <ul class="nav-second-level" aria-expanded="true">
                        @if( Route::has('dcms.slider.index'))
                        <li class="{{ ($_panel == 'Sliders') ? 'active' : '' }}"><a href="{{ URL::route('dcms.slider.index') }}" ><i class=" fas fa-arrows-alt-h">&nbsp;&nbsp;</i><span>{{__('Sliders')}}</span></a></li>
                        @endif
                        @if( Route::has('dcms.link.index'))
                        <li class="{{ ($_panel == 'Links') ? 'active' : '' }}"><a href="{{ URL::route('dcms.link.index') }}" ><i class="fa fa-link"></i>&nbsp;&nbsp;<span>{{__('Links')}}</span></a></li>
                        @endif
                        @if( Route::has('dcms.service.index'))
                        <li class="{{ ($_panel == 'Services') ? 'active' : '' }}"><a href="{{ URL::route('dcms.service.index') }}" ><i class="fa fa-bars"></i>&nbsp;&nbsp;<span>{{__('Services') }}</span></a></li>
                        @endif
                        @if( Route::has('dcms.popup.index'))
                        <li class="{{ ($_panel == 'Pop Up') ? 'active' : '' }}"><a href="{{ URL::route('dcms.popup.index') }}" ><i class="fas fa-expand"></i>&nbsp;&nbsp;<span>{{__('Pop Up') }}</span></a></li>
                        @endif
                    </ul>
                </li>

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
