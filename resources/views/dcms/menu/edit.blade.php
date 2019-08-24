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
                        @if(isset($data['menus']) && isset($menus_name))
                        @php $data['menus']->post_unique_id @endphp
                        <?php
                            dm_hpostform(URL::route($_base_route.'.update', ['id'=>$data['menus']->id]), 'PUT');  
                            dm_hidden('order', $data['menus']->order);
                            // dm_hidden('type', $data['menus']->type);
                            dm_menu_type_dropdown('', 'type','Menu Type', $data['type'], $data['menus']->type, $data['menus']->type);
                            if(isset($data['single_page']->title)){
                                dm_post_dropdown('', 'page_unique_id', 'Pages', $data['pages'], $data['menus']->post_unique_id, $data['single_page']->title );                            
                            }
                            if(isset($data['single_post']->title)){
                            dm_post_dropdown('', 'post_unique_id', 'Posts', $data['posts'], $data['menus']->post_unique_id, $data['single_post']->title);
                            }
                            if(isset($data['category']->title)){
                            dm_category_dropdown('', 'category_id', 'Category', $data['categories'], $data['menus']->category_id, $data['category']->title);  
                            }                          
                            dm_custom_link_hinput_update( 'text','link', "Custom Link", $data['menus']->url);                                                    
                            dm_menu_hinput_update('text','name', "Menu Name", $data['menus']->name);?>
                            @foreach($data['lang'] as $lang)
                            <?php   
                              if(isset($menus_name[$loop->index]->name)){
                                  $menu_name = $menus_name[$loop->index]->name;
                              }
                              else {
                                $menu_name = '';
                              }
                              dm_hidden('rows['.$loop->index.'][lang_id]', $lang->id);
                              dm_menu_hinput_update('text','rows['.$loop->index.'][lang_name]', "Menu Name (<strong>$lang->name</strong> )", $menu_name); ?>
                            @endforeach 
                            <?php 
                            // dm_menu_hinput('number','order', "Menu Order", $data['menus']->order); 
                            dm_menu_dropdown('', 'target', "Target", $data['target'], $data['menus']->target);                      
                            dm_hcheckbox('checkbox', 'status', 'Public', $data['menus']->status);
                            dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
                            dm_closeform();
                        ?>
                        @endif
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

    var old_value = document.getElementById("old_value").value;
    if (old_value == "Page"){
        $("#post_unique_id_Posts").hide();
        $("#category_id_Category").hide();
        $("#link_link").hide();
        $("#page_unique_id_Pages").show();
      }
      else if(old_value === "Post"){
        $("#post_unique_id_Posts").show();
        $("#category_id_Category").hide();
        $("#link_link").hide();
        $("#page_unique_id_Pages").hide();
      }
      else if(old_value === "Category"){
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
    </script>
@endsection