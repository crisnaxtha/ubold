@extends('dcms.layouts.app')

@section('content')
@include('dcms.includes.breadcrumb')
<div class="row">
    <div class="col-lg-8">
        <div class="card">
            <div class="card-body">
                @include('dcms.includes.buttons.button-back')
                @include('dcms.includes.flash_message_error')
                <?php dm_hpostform(URL::route($_base_route.'.update', ['popup_unique_id' => $data['single']->popup_unique_id]), 'PUT'); ?>
                <ul class="nav nav-tabs nav-bordered">
                    @if(isset($data['lang']))
                        @foreach($data['lang'] as $row )
                        <li  class="nav-item">
                            <a class="nav-link @if($loop->iteration == 1){{ 'active' }} @endif" data-toggle="tab" href="#{{ $row->name }}">{{ $row->name }}</a>
                        </li>
                        @endforeach
                    @endif
                </ul>
                <div class="tab-content">
                    @if(isset($data['lang']))
                        @foreach($data['lang'] as $row )
                            <div id="{{  $row->name }}" class="tab-pane @if($loop->iteration == 1){{ 'active' }} @endif">
                                <?php
                                    if(isset($links[$loop->index]['id'])){
                                        $id = $links[$loop->index]['id'];
                                    }else {
                                        $id = '';
                                    }
                                    if(isset($links[$loop->index]['title'])){
                                        $name = $links[$loop->index]['title'];
                                    }else {
                                        $name = '';
                                    }
                                    if(isset($links[$loop->index]['description'])){
                                        $description = $links[$loop->index]['description'];
                                    }else {
                                        $description = '';
                                    }
                                    dm_hidden('rows['.$loop->index.'][lang_id]', $row->id);
                                    dm_hidden('popup_unique_id', $data['single']->popup_unique_id);
                                    dm_hidden('rows['.$loop->index.'][id]', $id);
                                    dm_inputUpdate('text', 'rows['.$loop->index.'][title]', 'Title(*)', $name, '');
                                    dm_ckeditorUpdate($row->code.$loop->iteration, 'rows['.$loop->index.'][description]', 'Description(*)', $description);
                                ?>
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-4 col-xs-4">
        <div class="card">
            <div class="card-body">
                <p class="header-title">Image</p>
                <?php
                    dm_input('file', 'image', 'Image', '', '');
                ?>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <p class="header-title"> Status</p>
                <?php
                    dm_hinputUpdate('url','link', "Link", $data['single']->link);
                    dm_hinputUpdate('number','order', "Order", $data['single']->order);
                    dm_hcheckbox('checkbox', 'status', 'Status', $data['single']->status);
                ?>
            </div>
        </div>
    </div>
    <div class="col-lg-12 col-md-12 col-xs-12">
        <?php
            dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
            dm_closeform();
        ?>
    </div>
</div>


@endsection

@section('js')

<!--custom tagsinput-->
<script src="{{asset('assets/dcms/js/jquery.tagsinput.js')}}"></script>
@if(isset($data['lang']))
    @foreach($data['lang'] as $row )
        <script>
            CKEDITOR.replace(<?=$row->code.$loop->iteration?>, options);
        </script>
    @endforeach
@endif
<script>
$(document).ready(function() {
    $(".btn-file").click(function(){
        var html = $(".clone-file").html();
        $(".file-block").prepend(html);
    });

    $("body").on("click", ".btn-remove", function() {
        $(this).parents(".control-group").remove();
    });
});

$(function() {
// Tags Input
$(".tag").tagsInput();
});
</script>

@endsection
