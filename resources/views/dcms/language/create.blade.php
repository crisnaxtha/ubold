@extends('dcms.layouts.app')

@section('content')

<div class="row">
    <div class="col-lg-12 col-md-12 col-xs-12">
        <section class="panel">
            <header class="panel-heading">
                <h3>{{ $_panel }}</h3>
            </header>
            <div class="panel-body">
                    @include('dcms.includes.buttons.button-back')
                    @include('dcms.includes.flash_message_error')                    
                <div class=" form">
                    <?php
                    dm_hpostform(URL::route($_base_route.'.store'), 'POST');
                    dm_hinput('file', 'image', 'Language Flag', '', '');
                    dm_hinput('text','name', "Language Name(*)", 'name');
                    dm_hinput('text','code', "Language Code(*)", 'code');
                    // dm_hinput('number','order', "Order");
                    dm_hcheckbox('checkbox', 'status', 'Public');
                    // dm_hcheckbox('checkbox', 'default', 'Default');
                    dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                    dm_closeform();
                    ?>
                </div>
            </div>
        </section>
    </div>
</div>


@endsection

@section('js')

@endsection