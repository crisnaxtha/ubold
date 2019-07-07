@extends('dcms.layouts.app')
@section('css')
       <!--dynamic table-->
       @include('dcms.includes.datatable-assets.css')

@endsection

@section('content')
<!-- page start-->
@include('dcms.includes.breadcrumb')


<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                    <h4 class="header-title">Input Types</h4>
                    <p class="sub-header">
                        Most common form control, text-based input fields. Includes support for all HTML5 types: <code>text</code>, <code>password</code>, <code>datetime</code>, <code>datetime-local</code>, <code>date</code>, <code>month</code>, <code>time</code>, <code>week</code>, <code>number</code>, <code>email</code>, <code>url</code>, <code>search</code>, <code>tel</code>, and <code>color</code>.
                    </p>

                @include('dcms.includes.buttons.button-create')
                <div class="btn-group float-right">
                        @include('dcms.includes.buttons.button-recycle')
                </div>
                <div class="adv-table">
                    <table  class="display table table-bordered table-striped" id="dynamic-table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th >Post Unique Id</th>
                                <th>Category</th>
                                <th class="hidden-phone">Language Name</th>
                                <th>Post Visit Count</th>
                                <th>Title</th>
                                <th class="hidden-phone">Status</th>
                                <th class="hidden-phone">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(isset($data['rows']))
                            @foreach($data['rows'] as $row)
                            <tr class="gradeX" id="{{ $row->id }}">
                                    <td width="25px">{{ $loop->iteration }}</td>
                                    <td width="25px">{{ $row->post_unique_id }}</td>
                                    <td width="25px">{{ $row->postCategory->name }}</td>
                                    <td width="25px" class="hidden-phone">
                                        @if($row->language->image)
                                        <img style="width: 24px;" src="{{asset($row->language->image)}}">
                                        @endif
                                        {{ $row->Language->name }}
                                    </td>
                                    <td width="25px">{{ $row->visit_no }}</td>
                                    <td>{{ $row->title }}</td>
                                    <td width="25px" class="hidden-phone">
                                        <?php dm_flag($row->status) ?>
                                    </td>
                                    <td width="150px" class="hidden-phone">
                                        @include('dcms.includes.buttons.button-edit-post')
                                        @include('dcms.includes.buttons.button-delete-post')
                                    </td>
                                </tr>
                            @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
@include('dcms.includes.flash-message')

@include('dcms.includes.datatable-assets.js')

@endsection
