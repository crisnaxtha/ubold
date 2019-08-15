@extends('dcms.layouts.app')
@section('content')
@include('dcms.includes.breadcrumb')
<div class="row">
    <div class="col-lg-12 col-md-12 col-xs-12">
        <section class="card">
            <div class="card-body">
                @include('dcms.setting.includes.button-nav')
                @include('dcms.includes.flash_message_error')

                <h4 class="header-title mb-3">Footer</h4>

                <form action="{{URL::route($_base_route.'.footer.store', ['common_title_id'=>1])}}" method="POST" enctype="multipart/form-data">
                        {{ method_field('PUT') }} {{ csrf_field() }}
                    <div id="basicwizard">

                        <ul class="nav nav-pills bg-light nav-justified form-wizard-header mb-4">
                            <li class="nav-item">
                                <a href="#basictab1" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                    {{-- <i class="mdi mdi-account-circle mr-1"></i> --}}
                                    <span class="d-none d-sm-inline">First</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#basictab2" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                    {{-- <i class="mdi mdi-face-profile mr-1"></i> --}}
                                    <span class="d-none d-sm-inline">Second</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#basictab3" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                    {{-- <i class="mdi mdi-checkbox-marked-circle-outline mr-1"></i> --}}
                                    <span class="d-none d-sm-inline">Third</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#basictab4" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                    {{-- <i class="mdi mdi-checkbox-marked-circle-outline mr-1"></i> --}}
                                    <span class="d-none d-sm-inline">Fourth</span>
                                </a>
                            </li>
                        </ul>

                        <div class="tab-content b-0 mb-0">
                            <div class="tab-pane" id="basictab1">
                                <div class="row">
                                    <div class="col-12">
                                        <ul class="nav nav-tabs nav-bordered">
                                            @if(isset($data['lang']))
                                                @foreach($data['lang'] as $row )
                                                <li class="nav-item">
                                                    <a data-toggle="tab" href="#{{$row->name}}-t1" class="nav-link  @if($loop->iteration == 1){{ 'active' }} @endif">{{ $row->name }}</a>
                                                </li>
                                                @endforeach
                                            @endif
                                        </ul>
                                        <div class="tab-content">
                                            @if(isset($data['lang']))
                                                @foreach($data['lang'] as $row )
                                                    <div id="{{$row->name}}-t1" class="tab-pane @if($loop->iteration == 1){{ 'show active' }} @endif">
                                                        <?php
                                                        if(isset($titles[$loop->index]['id'])){
                                                            $id = $titles[$loop->index]['id'];
                                                        }else {
                                                            $id = '';
                                                        }
                                                        if(isset($titles[$loop->index]['footer_first_title'])){
                                                            $footer_first_title = $titles[$loop->index]['footer_first_title'];
                                                        }else {
                                                            $footer_first_title = '';
                                                        }
                                                        if(isset($titles[$loop->index]['footer_first_description'])){
                                                            $footer_first_description = $titles[$loop->index]['footer_first_description'];
                                                        }else {
                                                            $footer_first_description = '';
                                                        }
                                                        dm_hidden('rows['.$loop->index.'][lang_id]', $row->id);
                                                        dm_hidden('rows['.$loop->index.'][id]', $id);
                                                        dm_hidden('common_unique_id', 1);
                                                        dm_inputUpdate('text','rows['.$loop->index.'][footer_first_title]', "Site First Title (*)", $footer_first_title);
                                                        dm_ckeditorUpdate($row->code.$loop->iteration."1", 'rows['.$loop->index.'][footer_first_description]', 'Description(*)', $footer_first_description);

                                                        ?>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                    </div> <!-- end col -->
                                </div> <!-- end row -->
                            </div>

                            <div class="tab-pane" id="basictab2">
                                <div class="row">
                                    <div class="col-12">
                                        <ul class="nav nav-tabs nav-bordered">
                                            @if(isset($data['lang']))
                                                @foreach($data['lang'] as $row )
                                                <li class="nav-item">
                                                    <a data-toggle="tab" href="#{{$row->name}}-t2" class="nav-link  @if($loop->iteration == 1){{ 'show active' }} @endif">{{ $row->name }}</a>
                                                </li>
                                                @endforeach
                                            @endif
                                        </ul>
                                        <div class="tab-content">
                                            @if(isset($data['lang']))
                                                @foreach($data['lang'] as $row )
                                                    <div id="{{$row->name}}-t2" class="tab-pane @if($loop->iteration == 1){{ 'show active' }} @endif">
                                                        <?php
                                                        if(isset($titles[$loop->index]['footer_second_title'])){
                                                            $footer_second_title = $titles[$loop->index]['footer_second_title'];
                                                        }else {
                                                            $footer_second_title = '';
                                                        }
                                                        if(isset($titles[$loop->index]['footer_second_description'])){
                                                            $footer_second_description = $titles[$loop->index]['footer_second_description'];
                                                        }else {
                                                            $footer_second_description = '';
                                                        }

                                                        dm_inputUpdate('text','rows['.$loop->index.'][footer_second_title]', "Site second Title (*)", $footer_second_title);
                                                        dm_ckeditorUpdate($row->code.$loop->iteration."2", 'rows['.$loop->index.'][footer_second_description]', 'Description(*)', $footer_second_description);
                                                        ?>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>

                                    </div> <!-- end col -->
                                </div> <!-- end row -->
                            </div>

                            <div class="tab-pane" id="basictab3">
                                <div class="row">
                                    <div class="col-12">
                                        <ul class="nav nav-tabs nav-bordered">
                                            @if(isset($data['lang']))
                                                @foreach($data['lang'] as $row )
                                                <li class="nav-item">
                                                    <a data-toggle="tab" href="#{{$row->name}}-t3" class="nav-link  @if($loop->iteration == 1){{ 'active' }} @endif">{{ $row->name }}</a>
                                                </li>
                                                @endforeach
                                            @endif
                                        </ul>
                                        <div class="tab-content">
                                            @if(isset($data['lang']))
                                                @foreach($data['lang'] as $row )
                                                    <div id="{{$row->name}}-t3" class="tab-pane @if($loop->iteration == 1){{ 'show active' }} @endif">
                                                        <?php
                                                        if(isset($titles[$loop->index]['footer_third_title'])){
                                                            $footer_third_title = $titles[$loop->index]['footer_third_title'];
                                                        }else {
                                                            $footer_third_title = '';
                                                        }
                                                        if(isset($titles[$loop->index]['footer_third_description'])){
                                                            $footer_third_description = $titles[$loop->index]['footer_third_description'];
                                                        }else {
                                                            $footer_third_description = '';
                                                        }
                                                        dm_inputUpdate('text','rows['.$loop->index.'][footer_third_title]', "Site third Title (*)", $footer_third_title);
                                                        dm_ckeditorUpdate($row->code.$loop->iteration."3", 'rows['.$loop->index.'][footer_third_description]', 'Description(*)', $footer_third_description);
                                                        ?>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                    </div> <!-- end col -->
                                </div> <!-- end row -->
                            </div>

                            <div class="tab-pane" id="basictab4">
                                <div class="row">
                                    <div class="col-12">
                                        <ul class="nav nav-tabs nav-bordered">
                                            @if(isset($data['lang']))
                                                @foreach($data['lang'] as $row )
                                                <li class="nav-item">
                                                    <a data-toggle="tab" href="#{{$row->name}}-t4" class="nav-link  @if($loop->iteration == 1){{ 'show active' }} @endif">{{ $row->name }}</a>
                                                </li>
                                                @endforeach
                                            @endif
                                        </ul>
                                        <div class="tab-content">
                                            @if(isset($data['lang']))
                                                @foreach($data['lang'] as $row )
                                                    <div id="{{$row->name}}-t4" class="tab-pane @if($loop->iteration == 1){{ 'show active' }} @endif">
                                                        <?php
                                                        if(isset($titles[$loop->index]['footer_fourth_title'])){
                                                            $footer_forth_title = $titles[$loop->index]['footer_fourth_title'];
                                                        }else {
                                                            $footer_forth_title = '';
                                                        }
                                                        if(isset($titles[$loop->index]['footer_fourth_description'])){
                                                            $footer_forth_description = $titles[$loop->index]['footer_fourth_description'];
                                                        }else {
                                                            $footer_forth_description = '';
                                                        }

                                                        dm_inputUpdate('text','rows['.$loop->index.'][footer_fourth_title]', "Site forth Title (*)", $footer_forth_title);
                                                        dm_ckeditorUpdate($row->code.$loop->iteration."4", 'rows['.$loop->index.'][footer_fourth_description]', 'Description(*)', $footer_forth_description);
                                                        ?>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                        <input type="submit" class="finish btn btn-danger float-right" value="Finish"/><br>
                                    </div> <!-- end col -->
                                </div> <!-- end row -->
                            </div>

                            <ul class="list-inline wizard mb-0">
                                <li class="previous list-inline-item">
                                    <a href="javascript: void(0);" class="btn btn-secondary">Previous</a>
                                </li>
                                <li class="next list-inline-item float-right">
                                    <a href="javascript: void(0);" class="btn btn-secondary">Next</a>
                                </li>
                            </ul>

                        </div> <!-- tab-content -->
                    </div> <!-- end #basicwizard-->
                </form>
            </div>
        </section>
    </div>
</div>


@endsection

@section('js')
<!--Form Wizard-->
<script src="{{asset('assets/dcms/assets/libs/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js')}}" type="text/javascript"></script>
<!--script for this page-->
<script src="{{asset('assets/dcms/assets/js/pages/form-wizard.init.js')}}"></script>

    <script>

            //step wizard

            $(function() {
                $('#default').stepy({
                    backLabel: 'Previous',
                    block: true,
                    nextLabel: 'Next',
                    titleClick: true,
                    titleTarget: '.stepy-tab'
                });
            });
        </script>

@if(isset($data['lang']))
@foreach($data['lang'] as $row )
    <script>
        CKEDITOR.replace(<?=$row->code.$loop->iteration ?>1, options);
        CKEDITOR.replace(<?=$row->code.$loop->iteration ?>2, options);
        CKEDITOR.replace(<?=$row->code.$loop->iteration ?>3, options);
        CKEDITOR.replace(<?=$row->code.$loop->iteration ?>4, options);
    </script>
@endforeach
@endif

@endsection
