@extends('dcms.layouts.app')
@section('css')
       <!--dynamic table-->
       {{-- @include('dcms.includes.datatable-assets.css') --}}
@endsection

@section('content')
<!-- page start-->
<div class="row">
    <div class="col-sm-12">
       <section class="panel">
          <header class="panel-heading">
             {{ $_panel }}
          </header>
          <div class="panel-body">
               @include('dcms.includes.buttons.button-create')
               <div class="btn-group pull-right">
                  @include('dcms.includes.buttons.button-recycle')
               </div>
            <div class="adv-table">
                <table  class="display table table-bordered table-striped" id="dynamic-table">
                   <thead>
                      <tr>
                         <th>S.N</th>
                         <th>Page Unique Id</th>
                         <th>Language Name</th>
                         <th>Page Visit Count</th>
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
                           <td width="25px">
                              @if($row->language->image)
                                 <img style="width: 24px;" src="{{asset($row->language->image)}}">
                              @endif
                              {{ $row->language->name }}
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
       </section>
    </div>
</div>
@endsection

@section('js')
@include('dcms.includes.flash-message')

   {{-- @include('dcms.includes.datatable-assets.js') --}}

@endsection
