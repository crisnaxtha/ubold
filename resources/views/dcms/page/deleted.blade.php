@extends('dcms.layouts.app')
@section('css')
       <!--dynamic table-->
       @include('dcms.includes.footable-assets.css')
@endsection

@section('content')
@include('dcms.includes.breadcrumb')
<!-- page start-->
<div class="row">
    <div class="col-sm-12">
       <section class="panel">
          <header class="panel-heading">
             Deleted {{ $_panel }}
          </header>
          <div class="panel-body">
               @include('dcms.includes.buttons.button-back')
               <div class="btn-group pull-right">
               </div>
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
            <div class="adv-table">
                <table  class="display table table-bordered table-striped" id="dynamic-table">
                   <thead>
                      <tr>
                         <th>S.N</th>
                         <th>Page Unique Id</th>
                         <th>Deleted Date</th>
                         <th>Title</th>
                         <th class="hidden-phone">Action</th>
                      </tr>
                   </thead>
                   <tbody>
                     @if(isset($data['rows']))
                        @foreach($data['rows'] as $row)
                        <tr class="gradeX" id="{{ $row->id }}">
                           <td width="25px">{{ $loop->iteration }}</td>
                           <td width="25px">{{ $row->unique_id }}</td>
                           <td width="25px">
                              {{ $row->deleted_at }}
                           </td>
                           <td>{{ $row->title }}</td>
                           <td width="150px" class="hidden-phone">
                                 @include('dcms.includes.buttons.button-recycle-restore-post')
                                 @include('dcms.includes.buttons.button-recycle-delete-post')
                           </td>
                        </tr>
                        @endforeach
                     @endif
                   </tbody>
                </table>
             </div>
          </div>
       </section>
    </div>
</div>
@endsection

@section('js')
@include('dcms.includes.flash-message')

@include('dcms.includes.footable-assets.js')

@endsection
