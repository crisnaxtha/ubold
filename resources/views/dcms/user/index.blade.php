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
                              <th>User's Name</th>
                              <th>Email</th>
                              <th>Created Date</th>
                              <th>Last Login</th>
                              <th>IP Address</th>
                              <th>Role</th>
                              <th>Status</th>
                              <th>Action</th>
                          </tr>
                      </thead>
                      <tbody>
                           @if(isset($data['rows']))
                           @foreach($data['rows'] as $row)

                           <tr class="gradeX" id="{{ $row->id }}">
                              <td>{{ $loop->iteration }}</td>
                              <td>{{ $row->name }}</td>
                              <td>{{ $row->email }}</td>
                              <td>{{ $row->created_at}}<br><strong>[{{ $row->created_at->diffForHumans() }}]</strong></td>
                              <td><?php dm_flag($row->last_login_at) ?>{{ $row->last_login_at }}@if(isset($row->last_login_at))<br><strong>[{{ $row->last_login_at->diffForHumans() }}]</strong>@endif</td>
                              <td><?php dm_flag($row->last_login_ip) ?>{{ $row->last_login_ip }}</td>
                              <td>@if($row->role_super) {{ "SUPER" }} @elseif(isset($row->role_id)) {{ $row->Role->name }} @else {{ "No Role Assign"}}  @endif</td>
                              <td><?php dm_flag($row->status) ?></td>
                              <td>
                                 @if(Auth::user()->id == $row->id)
                                    <button class="btn btn-danger"> Self </button>
                                 @else
                                    @include('dcms.includes.buttons.button-edit')
                                    @include('dcms.includes.buttons.button-delete')
                                 @endif
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
