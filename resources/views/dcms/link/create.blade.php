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
                    dm_hpostform(URL::route($_base_route.'.store'), 'POST');
                    dm_hselect_faicon('icon', 'Icon', $data['fa-icons']);
                    dm_hcolor_picker('color', "Select Color");
                    ?>
                    @foreach($data['lang'] as $row)
                    <?php
                    dm_hidden('rows['.$loop->index.'][lang_id]', $row->id);
                    dm_hinput('text','rows['.$loop->index.'][name]', "Name Of Link (<strong>$row->name</strong>)(*)", 'rows.'.$loop->index.'.name');
                    ?>
                    @endforeach
                    <?php
                    dm_hinput('url','url', "URL of Website(*)", 'url');
                    dm_hinput('number','order', "Order", 'order');
                    dm_hcheckbox('checkbox', 'status', 'Status');
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
