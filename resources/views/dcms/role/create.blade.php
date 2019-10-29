@extends('dcms.layouts.app')

@section('content')
<!-- page start-->
@include('dcms.includes.breadcrumb')
<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <div class="card-box">
                    @include('dcms.includes.flash-message')
                <div class=" form">
                    <?php
                    dm_hpostform(URL::route($_base_route.'.store'), 'POST');
                    dm_hinput('text','name', "Role Name", 'name');
                    dm_hcheckbox('checkbox', 'status', 'Status', 'status');
                    dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                    dm_closeform();
                    ?>
                </div>
            </div>
        </div>
    </div>


@endsection

@section('js')

@endsection
