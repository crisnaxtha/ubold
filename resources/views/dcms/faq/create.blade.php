@extends('dcms.layouts.app')
@section('css')
<link rel="stylesheet" type="text/css" href="{{asset('assets/dcms/assets/bootstrap-colorpicker/css/colorpicker.css')}}" />
@endsection
@section('content')
@include('dcms.includes.breadcrumb')

<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <section class="card">
                {{-- <header class="panel-heading">
                   <h3>{{ $_panel }}</h3>
                </header> --}}
                <div class="card-box">
                    @include('dcms.includes.flash_message_error')
                    <div class=" form">
                        <?php
                        dm_hpostform(URL::route($_base_route.'.store'), 'POST');
                        ?>
                        @foreach($data['lang'] as $row)
                        <?php
                        dm_hidden('rows['.$loop->index.'][lang_id]', $row->id);
                        dm_hinput('text','rows['.$loop->index.'][title]', "Question (<strong>$row->name</strong>)(*)", 'rows.'.$loop->index.'.title');
                        dm_htextarea('rows['.$loop->index.'][description]', "Answer (<strong>$row->name</strong>)(*)", 'rows.'.$loop->index.'.description');
                        ?>
                        @endforeach
                        <?php
                        // dm_hinput('url','link', "Link(*)");
                        dm_hinput('number','order', "Order");
                        dm_hcheckbox('checkbox', 'status', 'Status');
                        dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                        dm_closeform();
                        ?>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <?php


    ?>

@endsection

@section('js')
<script type="text/javascript" src="{{asset('assets/dcms/assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js')}}"></script>
<script>
//colorpicker start

$('.colorpicker-default').colorpicker({
    format: 'hex'
});
$('.colorpicker-rgba').colorpicker();

//colorpicker end
</script>
@endsection
