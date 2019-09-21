@extends('dcms.layouts.app')

@section('content')
@include('dcms.includes.breadcrumb')
<div class="row">
    <div class="col-lg-8">
        <div class="card">
            <div class="card-body">
                @include('dcms.includes.buttons.button-back')
                @include('dcms.includes.flash_message_error')
                <?php dm_hpostform(URL::route($_base_route.'.update', ['id' => $data['process']->id]), 'PUT');
                dm_hinputUpdate('text','name', "Name", $data['process']->name);
                ?>
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
                                    // if(isset($process_name[$loop->index]['id'])){
                                    //     $id = $process_name[$loop->index]['id'];
                                    // }else {
                                    //     $id = '';
                                    // }
                                    if(isset($process_name[$loop->index]->name)){
                                        $name = $process_name[$loop->index]->name;
                                    }else {
                                        $name = '';
                                    }
                                    if(isset($process_name[$loop->index]->description)){
                                        $description = $process_name[$loop->index]->description;
                                    }else {
                                        $description = '';
                                    }
                                    dm_hidden('rows['.$loop->index.'][lang_id]', $row->id);
                                    // dm_hidden('unique_id', $data['single']->unique_id);
                                    // dm_hidden('rows['.$loop->index.'][id]', $id);
                                    dm_inputUpdate('text', 'rows['.$loop->index.'][name]', 'Title(*)', $name, '');
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
                <p class="header-title"> Status</p>
                <?php
                    dm_hinputUpdate('url','link', "Link", $data['process']->url);
                    // dm_hinputUpdate('number','order', "Order", $data['process']->order);
                    dm_hcheckbox('checkbox', 'status', 'Status', $data['process']->status);
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
