 <!-- Footer Start -->
 <footer class="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                {{ date('Y') }} &copy; CMS. Page rendered in {{ date('s', $_SERVER['REQUEST_TIME_FLOAT']) }} Seconds.@if(isset(Auth::user()->last_login_at)) Your IP Address is {{ Auth::user()->last_login_ip }} & Login Time is {{ Auth::user()->last_login_at }}<strong>[{{ Auth::user()->last_login_at->diffForHumans() }}]</strong>@endif
            </div>
            <div class="col-md-4">
                <div class="text-md-right footer-links d-none d-sm-block">
                    <a href="javascript:void(0);">About Us</a>
                    <a href="javascript:void(0);">Help</a>
                    <a href="javascript:void(0);">Contact Us</a>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end Footer -->