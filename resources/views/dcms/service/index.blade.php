@extends('dcms.layouts.app')
@section('css')
       <!--dynamic table-->
       {{-- @include('dcms.includes.datatable-assets.css') --}}
       @include('dcms.includes.footable-assets.css')
@endsection

@section('content')
<!-- page start-->

<div class="row">
    <div class="col-12">
        <div class="card-box">
            {{-- <h4 class="header-title">Filtering</h4>
            <p class="sub-header">
                include filtering in your FooTable.
            </p> --}}

            @include('dcms.includes.buttons.button-create')
            <hr>
            <div class="mb-2">
                <div class="row">
                    <div class="col-12 text-sm-center form-inline">
                        <div class="form-group mr-2">
                            <select id="demo-show-entries" class="form-control form-control-sm ml-1 mr-1">
                                <option value="5">5</option>
                                <option value="10">10</option>
                                <option value="15">15</option>
                                <option value="20">20</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input id="demo-foo-search" type="text" placeholder="Search" class="form-control form-control-sm" autocomplete="on">
                        </div>
                    </div>
                </div>
            </div>

            <div class="table-responsive">
                <table id="demo-foo-pagination" class="table table-bordered toggle-circle mb-0" data-page-size="7">
                    <thead>
                        <tr>
                            <th>#</th>
                         <th>Name</th>
                         <th>Link</th>
                         <th>Status</th>
                         <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if(isset($data['rows']))
                        @foreach($data['rows'] as $row)
                        <tr class="gradeX" id="{{ $row->id }}">
                           <td>{{ $loop->iteration }}</td>
                           <td>{{ $row->title }}</td>
                           <td>{{ $row->link }}</td>
                           <td><?php dm_flag($row->status) ?></td>
                           <td>
                              @include('dcms.includes.buttons.button-edit-service')
                              @include('dcms.includes.buttons.button-delete-service')
                           </td>
                        </tr>
                        @endforeach
                     @endif
                    </tbody>
                    <tfoot>
                    <tr class="active">
                        <td colspan="8">
                            <div class="text-right">
                                <ul class="pagination pagination-rounded justify-content-end footable-pagination m-t-10 mb-0"></ul>
                            </div>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div> <!-- end .table-responsive-->
        </div> <!-- end card-box -->
    </div> <!-- end col -->
</div>
<!-- page start-->
@endsection

@section('js')
@include('dcms.includes.flash-message')
{{-- @include('dcms.includes.datatable-assets.js') --}}
@include('dcms.includes.footable-assets.js')
@endsection
