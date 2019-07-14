@extends('dcms.layouts.app')

@section('content')
@include('dcms.includes.breadcrumb')

<div class="row">
    <div class="col-lg-8 col-md-8 col-xs-8">
        <div class="card">
            <div class="card-body">
                @include('dcms.includes.buttons.button-back')
                @include('dcms.includes.flash_message_error')  

        <?php
        dm_postform(URL::route($_base_route.'.update', ['staff_unique_id'=> $data['single']->staff_unique_id]), 'PUT');
        ?>
            <ul class="nav nav-tabs">
                @if(isset($data['lang']))
                    @foreach($data['lang'] as $row )
                    <li class="@if($loop->iteration == 1){{ 'active' }} @endif">
                        <a data-toggle="tab" href="#{{ $row->name }}">{{ $row->name }}</a>
                    </li>
                    @endforeach
                @endif
            </ul>
               
            <div class="tab-content">
                @if(isset($data['lang']))
                    @foreach($data['lang'] as $row )
                        <div id="{{  $row->name }}" class="tab-pane @if($loop->iteration == 1){{ 'active' }} @endif">
                            <?php 

                                    if(isset($staff[$loop->index]['id'])){
                                        $id = $staff[$loop->index]['id'];
                                    }else {
                                        $id = '';
                                    }
                                    if(isset($staff[$loop->index]['name'])){
                                        $name = $staff[$loop->index]['name'];
                                    }else {
                                        $name = '';
                                    }
                                    if(isset($staff[$loop->index]['designation'])){
                                        $designation = $staff[$loop->index]['designation'];
                                    }else {
                                        $designation = '';
                                    }
                                    if(isset($staff[$loop->index]['description'])){
                                        $description = $staff[$loop->index]['description'];
                                    }else {
                                        $description = '';
                                    }

                                dm_hidden('rows['.$loop->index.'][lang_id]', $row->id);
                                dm_hidden('rows['.$loop->index.'][id]', $id);
                                dm_hidden('staff_unique_id', $data['single']->staff_unique_id);
                                dm_inputUpdate('text', 'rows['.$loop->index.'][name]', 'Name(*)', $name, '');
                                dm_inputUpdate('text', 'rows['.$loop->index.'][designation]', 'Designation', $designation, '');
                                dm_ckeditorUpdate($row->code.$loop->iteration, 'rows['.$loop->index.'][description]', 'Description', $description);
                            ?>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
            <!--tab nav start-->
</div>
        <div class="col-lg-4 col-md-4 col-xs-4">
            <div class="card">
                <div class="card-body">
                        <p class="header-title">Staff Image</p>
                    <?php 
                        dm_input('file', 'image', 'Staff Image', '', '');
                        if(isset($data['single']->image)){
                              dm_thumbImage($data['single']->image);
                        }
                    ?>
                </div>
            </div>
        
       
                <div class="card">    
                    <div class="panel-body"> 
                        <p class="header-title">Select Branch</p>
                        <?php 
                            if(!empty($data['single']->branch_id )) {
                                                $branch_id = $data['single']->branch_id;
                                                $branch_name = $data['single']->branch->name;
                                }else {
                                                $branch_id = '';
                                                $branch_name = "No Branch";
                        }

                                dm_dbranchDropdown('branch_id', "Branch(*)", $data['branch'], $branch_id, $branch_name);                           
                        ?>
                    </div>
                </div>
       
            <div class="card">
                <div class="card-body"> 
                    <p class="header-title">Staff Status</p>
                    <?php 
                        dm_inputUpdate('number', 'level', 'Level(*)', $data['single']->level, '');
                        dm_checkbox('checkbox', 'status', 'Status', $data['single']->status);
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
        $(".file-block").append(html);
    });

    $("body").on("click", ".btn-remove", function() {
        $(this).parents(".control-group").remove();
    });
});
</script>
@endsection