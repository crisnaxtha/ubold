@extends('dcms.layouts.app')
@section('css')
       <!--dynamic table-->
    @include('dcms.includes.footable-assets.css')
@endsection

@section('content')
<!-- page start-->
@include('dcms.includes.breadcrumb')
<div class="row">
    <div class="col-12">
        <div class="card-box">
           @include('dcms.tracker.includes.button-truncate')
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
                            <th>Visit Date</th>
                            <th>Visit Time</th>
                            <th>Vistior Ip Address</th>
                            <th>No of Visit</th>
                            <th>User Agent</th>
                            <th>Request Method</th>
                            <th>Request URI</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if(isset($data['rows']))
                        @foreach($data['rows'] as $row)
                        <tr class="gradeX" id="{{ $row->id }}">
                           <td>{{ $loop->iteration }}</td>
                           <td>{{ $row->visit_date }}</td>
                           <td><strong> {{ $row->updated_at->diffForHumans() }}</strong>,{{ $row->visit_time }}</td>
                           <td>{{ $row->visitor }}</td>
                           <td>{{ $row->hits }}</td>
                           <td>{{ $row->user_agent }}</td>
                           <td>{{ $row->request_method }}</td>
                           <td>{{ $row->request_uri }}</td>

                           <td>
                              {{-- @include('dcms.includes.buttons.button-edit')                               --}}
                              @include('dcms.includes.buttons.button-delete')
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
@endsection

@section('js')
@include('dcms.includes.flash-message')

@include('dcms.includes.footable-assets.js')

@endsection
