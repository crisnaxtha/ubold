@extends('dcms.layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-12 col-md-12 col-xs-12">
        <section class="card">
            <div class="card-body">
                    @include('dcms.includes.buttons.button-back')
                    @include('dcms.includes.flash_message_error')
                <div class=" form">
                        <?php
                        dm_hpostform(URL::route($_base_route.'.update', ['unique_id' => $data['single']->unique_id]), 'PUT');
                        dm_hselect_faicon('icon', 'Icon', $data['fa-icons'], $data['single']->icon);
                        dm_hcolor_picker('color', "Select Color", $data['single']->color);
                        ?>
                        @foreach($data['lang'] as $row)
                        <?php
                         if(isset($links[$loop->index]['id'])){
                            $id = $links[$loop->index]['id'];
                        }else {
                            $id = '';
                        }
                        if(isset($links[$loop->index]['name'])){
                            $name = $links[$loop->index]['name'];
                        }else {
                            $name = '';
                        }
                        dm_hidden('rows['.$loop->index.'][lang_id]', $row->id);
                        dm_hidden('rows['.$loop->index.'][id]', $id);
                        dm_hidden('unique_id', $data['single']->unique_id);
                        dm_hinputUpdate('text','rows['.$loop->index.'][name]', "Name Of Link (<strong>$row->name</strong>)(*)", $name);
                        ?>
                        @endforeach
                        <?php
                        dm_hinputUpdate('url','url', "URL of Website(*)", $data['single']->url);
                        dm_hinputUpdate('number','order', "Order", $data['single']->order);
                        dm_hcheckbox('checkbox', 'status', 'Status', $data['single']->status);
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
