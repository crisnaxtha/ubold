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
    <?php


    ?>

@endsection

@section('js')

@endsection