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
                        dm_hpostform(URL::route($_base_route.'.update', ['category_unique_id' => $data['single']->category_unique_id]), 'PUT');
                        dm_hselect_faicon('icon', 'Icon', $data['fa-icons'], $data['single']->icon);
                        dm_hcolor_picker('color', "Select Color", $data['single']->color);
                        ?>
                        @foreach($data['lang'] as $row)
                        <?php
                         if(isset($category[$loop->index]['id'])){
                            $id = $category[$loop->index]['id'];
                        }else {
                            $id = '';
                        }
                        if(isset($category[$loop->index]['name'])){
                            $name = $category[$loop->index]['name'];
                        }else {
                            $name = '';
                        }
                        dm_hidden('rows['.$loop->index.'][lang_id]', $row->id);
                        dm_hidden('rows['.$loop->index.'][id]', $id);
                        dm_hidden('category_unique_id', $data['single']->category_unique_id);
                        dm_hinputUpdate('text','rows['.$loop->index.'][name]', "Name (<strong>$row->name</strong>)(*)", $name);
                        ?>
                        @endforeach
                        <?php
                        dm_hcheckbox('checkbox', 'featured', 'Featured', $data['single']->featured);
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
