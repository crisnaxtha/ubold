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
                        dm_hinput('file', 'image', 'Slider Image(*)', '', '');
                        dm_hinput('text','name', "Slider Name(*)", 'name');
                        ?>
                        @foreach($data['lang'] as $lang)
                          <?php   dm_hidden('rows['.$loop->index.'][lang_id]', $lang->id);
                                  dm_menu_hinput('text','rows['.$loop->index.'][lang_name]', "Menu Name (<strong>$lang->name</strong>)(*)", 'rows.'.$loop->index.'.lang_name');
                         ?>
                        @endforeach 
                        <?php 
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
@include('dcms.includes.flash-message')                    


@endsection