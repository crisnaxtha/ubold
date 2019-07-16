@extends('dcms.layouts.app')

@section('content')
<!-- page start-->
@include('dcms.includes.breadcrumb')

<div class="row">
        @include('dcms.user_profile.includes.user-pic')
        <div class="col-lg-8 col-xl-8">
            <section class="card">
                    <div class="card-body">
                        <div class="header-title">
                                {{ Auth::user()->name }}'s Edit Profile
                        </div>
                        <div class=" form">
                                <?php
                                dm_hpostform(URL::route($_base_route.'.update'), 'PUT');
                                dm_hinputUpdate('file', 'avatar', 'Avatar', '', '');
                                dm_hinputUpdate('text','name', "Name", $row->name);
                                dm_hinputUpdate('text','email', "Email", $row->email);
                                dm_hinputUpdate('text','phone', "Phone", $row->phone);
                                dm_hsubmit('Submit', URL::route($_base_route.'.show'), 'Cancel');
                                dm_closeform();
                                ?>
                        </div>
                    </div>
                </section>
                @include('dcms.user_profile.includes.change-password')
        </div> <!-- end col -->
</div>
<!-- page end-->

@endsection
