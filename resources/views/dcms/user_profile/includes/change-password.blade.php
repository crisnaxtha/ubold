<section>
    <div class="card">
        <div class="card-body">
            <div class="header-title">{{ __('Reset Password') }}</div>
            <form class="form-horizontal" role="form" method="POST" action="{{ route('dcms.user_profile.password.change') }}">
                @csrf
                <div class="form-group">
                    <label  class="col-lg-4 control-label">Current Password</label>
                    <div class="col-lg-12">
                        <input type="password" class="form-control" id="c-pwd" name="current_password" placeholder="Enter Current Password ">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-lg-4 control-label">New Password</label>
                    <div class="col-lg-12">
                        <input type="password" class="form-control" id="n-pwd" name="password" placeholder="Enter New Password">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-lg-4 control-label">Re-type New Password</label>
                    <div class="col-lg-12">
                        <input type="password" class="form-control" id="rt-pwd" name="password_confirmation" placeholder="Re-type New Password ">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-default">Cancel</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
