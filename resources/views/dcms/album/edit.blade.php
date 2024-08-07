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
                        dm_hpostform(URL::route($_base_route.'.update', ['id' => $data['albums']]), 'PUT');
                        dm_dropdown('category','Category(*)', $data['categories'], $data['albums']->album_category_id, $data['albums']->albumCategory->name);
                        dm_hinputUpdate('text','name', "Album Name(*)", $data['albums']->name);
                        ?>
                        @foreach($data['lang'] as $lang)
                        <?php
                        if(isset($albums_name[$loop->index]->title)){
                            $albums_title = $albums_name[$loop->index]->title;
                        }
                        else {
                        $albums_title = '';
                        }
                        // if(isset($albums_name[$loop->index]['description'])){
                        //     $description = $post[$loop->index]['description'];
                        // }else {
                        //     $description = '';
                        // }
                        dm_hidden('rows['.$loop->index.'][lang_id]', $lang->id);
                        dm_hinputUpdate('text','rows['.$loop->index.'][name]', "Album Name (<strong>$lang->name</strong>)(*)", $albums_title);
                        // dm_textareaUpdate('rows['.$loop->index.'][description]', 'Description', $description, '');
                        ?>
                        @endforeach
                        <?php
                        dm_hinputUpdate('file', 'image', 'Album Feature Image', '', '');

                        dm_hinputUpdate('number','order', "Order", $data['albums']->order);
                        dm_hcheckbox('checkbox', 'status', 'Status', $data['albums']->status);
                        if(isset($data['albums']->cover_image)){
                              dm_thumbImage($data['albums']->cover_image);
                        }
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
