@extends('dcms.layouts.app')

@section('content')
@include('dcms.includes.breadcrumb')

<div class="row">
        <div class="col-lg-12">
            <section class="card">
                <div class="card-body">
                    @include('dcms.includes.buttons.button-back')
                        @include('dcms.includes.flash_message_error')
                    <div class=" form">
                        <?php
                        dm_hpostform(URL::route($_base_route.'.store'), 'POST');
                        dm_menu_type_dropdown('', 'type','Menu Type(*)', $data['type']);
                        dm_post_dropdown('', 'page_unique_id', 'Pages', $data['pages']);
                        dm_post_dropdown('', 'post_unique_id', 'Posts', $data['posts']);
                        dm_category_dropdown('', 'category_id', 'Category', $data['categories']);
                        dm_custom_link_hinput( 'url','link', "Custom Link", 'link');
                        dm_menu_hinput('text','name', "Menu Name(*)", 'name');
                        ?>
                        @foreach($data['lang'] as $lang)
                          <?php   dm_hidden('rows['.$loop->index.'][lang_id]', $lang->id);
                                  dm_menu_hinput('text','rows['.$loop->index.'][lang_name]', "Menu Name (<strong>$lang->name</strong>)(*)", 'rows.'.$loop->index.'.lang_name'); ?>
                        @endforeach
                        <?php
                        dm_hidden('parent_id', Null);
                        dm_hidden('order', 1);
                        dm_menu_dropdown('', 'target', "Target(*)", $data['target']);
                        dm_hcheckbox('checkbox', 'status', 'Public');
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
<script>
    function menuTypeFunction() {
      var menu_type = document.getElementById("type").value;
      if (menu_type == "Page"){
        $("#post_unique_id_Posts").hide();
        $("#category_id_Category").hide();
        $("#link_link").hide();
        $("#page_unique_id_Pages").show();
      }
      else if(menu_type === "Post"){
        $("#post_unique_id_Posts").show();
        $("#category_id_Category").hide();
        $("#link_link").hide();
        $("#page_unique_id_Pages").hide();
      }
      else if(menu_type === "Category"){
        $("#post_unique_id_Posts").hide();
        $("#category_id_Category").show();
        $("#link_link").hide();
        $("#page_unique_id_Pages").hide();
      }
      else {
        $("#post_unique_id_Posts").hide();
        $("#category_id_Category").hide();
        $("#link_link").show();
        $("#page_unique_id_Pages").hide();
      }
    }
    </script>
@endsection
