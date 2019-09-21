 <!-- Footer Start -->
 <footer class="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                {{ date('Y') }} &copy; UBOLD. Page rendered in {{ date('s', $_SERVER['REQUEST_TIME_FLOAT']) }} Seconds.@if(isset(Auth::user()->last_login_at)) Your IP Address is {{ Auth::user()->last_login_ip }} & Login Time is {{ Auth::user()->last_login_at }}<strong>[{{ Auth::user()->last_login_at->diffForHumans() }}]</strong>@endif
            </div>
        </div>
    </div>
</footer>
<!-- end Footer -->
