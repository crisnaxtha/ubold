@extends('dcms.layouts.app')
@section('content')
@include('dcms.includes.breadcrumb')
<div class="row">
    <div class="col-lg-8">
        <div class="card">
            <div class="card-body">
                @include('dcms.includes.buttons.button-back')
                @include('dcms.includes.flash_message_error')
                <?php  dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->unique_id]), 'PUT');?>
                <p class="header-title">Select Category</p>
                <?php
                    dm_dropdown('category','Category(*)', $data['categories'], $data['single']->category_id, $data['single']->postCategory->name);
                ?>
                <ul class="nav nav-tabs nav-bordered">
                    @if(isset($data['lang']))
                        @foreach($data['lang'] as $row )
                        <li class="nav-item">
                            <a class="nav-link @if($loop->iteration == 1){{ 'active' }} @endif" data-toggle="tab" href="#{{ $row->name }}" aria-expanded="false">{{ $row->name }}</a>
                        </li>
                        @endforeach
                    @endif
                </ul>
                <div class="tab-content">
                    @if(isset($data['lang']))
                        @foreach($data['lang'] as $row )
                            <div id="{{  $row->name }}" class="tab-pane @if($loop->iteration == 1){{ 'active' }} @endif">
                                    <?php
                                    if(isset($post[$loop->index]['id'])){
                                           $id = $post[$loop->index]['id'];
                                       }
                                       else{
                                           $id = '';
                                       }
                                       if(isset($post[$loop->index]['title'])){
                                           $title = $post[$loop->index]['title'];
                                       }else {
                                           $title = '';
                                       }
                                       if(isset($post[$loop->index]['content'])){
                                           $content = $post[$loop->index]['content'];
                                       }else {
                                           $content = '';
                                       }
                                       if(isset($post[$loop->index]['excerpt'])){
                                           $excerpt = $post[$loop->index]['excerpt'];
                                       }else {
                                           $excerpt = '';
                                       }
                                       dm_hidden('rows['.$loop->index.'][lang_id]', $row->id);
                                       dm_hidden('type', 'post');
                                       dm_hidden('unique_id', $data['single']->unique_id);
                                       dm_hidden('rows['.$loop->index.'][id]', $id);
                                       dm_inputUpdate('text', 'rows['.$loop->index.'][title]', 'Title(*)', $title, '');
                                       dm_ckeditorUpdate($row->code.$loop->iteration, 'rows['.$loop->index.'][description]', 'Description(*)', $content);
                                       dm_textareaUpdate('rows['.$loop->index.'][excerpt]', 'Excerpt', $excerpt, '');
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
                <p class="header-title">Thumbnail Image</p>
                <?php
                    dm_input('file', 'image', 'Thumbnail Image', '', '');
                    if(isset($post[0]['thumbnail'])){
                        dm_thumbImage($post[0]['thumbnail']);
                    }
                ?>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <p class="header-title">File Section</p>
                <?php
                    dm_button("button", "btn-success btn-file btn-xs", "Add Files");
                ?>
                <div class="file-block">

                </div>
                <div class="clone-file hide">
                    <div class="control-group">
                        <?php
                            dm_input('text', 'file_title[]', 'File Title', '', '');
                            dm_input('file', 'files[]', 'Upload File', '', '');
                            dm_button("button", "btn-danger btn-remove float-right btn-xs", "Remove Files");
                        ?>
                        <br>
                        @if(isset($data['file']))
                        <table  class="display table table-bordered">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>File Name</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($data['file'] as $row)
                                <tr class="gradeX">
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $row->title }}</td>
                                    <td>
                                        @include('dcms.includes.buttons.button-delete-file')
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>
                        </table>
                        @endif
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <p class="header-title">Page Status</p>
                <?php
                dm_textareaUpdate('tag', 'Tags(*)', $data['single']->tag, '');
                dm_checkbox('checkbox', 'status', 'Publish', $data['single']->status);
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
            CKEDITOR.replace(<?=$row->code.$loop->iteration ?>, options);
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
