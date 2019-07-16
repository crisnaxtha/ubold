@extends('dcms.layouts.app')

@section('content')
@include('dcms.includes.breadcrumb')

<div class="row">
    <div class="col-lg-12 col-md-12 col-xs-12">
        <section class="card">
            <div class="card-body">
                    @include('dcms.includes.buttons.button-back')
                    @include('dcms.includes.flash_message_error')
                <div class=" form">
                    <?php
                    dm_hpostform(URL::route($_base_route.'.update', ['id'=>$row->id]), 'PUT');

                    dm_hinputUpdate('text','title', "File Name(*)", $row->title);
                    dm_hinputUpdate('number','order', "Order", $row->order);
                    dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                    dm_closeform();
                    ?>
                </div>
            </div>
        </section>
    </div>
</div>

@endsection
