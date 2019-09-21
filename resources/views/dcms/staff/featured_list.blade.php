@extends('dcms.layouts.app')
@section('css')
@include('dcms.includes.nestable-assets.css')

@endsection

@section('content')
@include('dcms.includes.breadcrumb')
<div class="row">
    <div class="col-lg-12 col-md-12 col-xs-12">
        <section class="card">
            <div class="card-body">
                @include('dcms.includes.flash-message')
                <div class="dd" id="nestable">
                    <ol class="dd-list">
                        @foreach($data['rows'] as $row)
                        <li class="dd-item dd3-item" data-id="{{ $row->id }}" data-unique="{{ $row->unique_id }}">
                            <div class="dd-handle dd3-handle"></div>
                                <div class="dd3-content">{{ $row->name }}</div>
                        </li>
                        @endforeach
                    </ol>
                    <div style="display:" id="nestable-output"></div>
                </div>
            </div>
        </section>
    </div>
</div>
@endsection

@section('js')
@include('dcms.includes.nestable-assets.js')
<script type="text/javascript">

$(document).ready(function()
   {
       var updateOutput = function(e)
       {
           var list   = e.length ? e : $(e.target),
               output = list.data('output');
           if (window.JSON) {
               output.val(window.JSON.stringify(list.nestable('serialize')));//, null, 2));
               // Ajax request data
               var dataString = {
                 data : $("#nestable-output").val(),
               };
            //    alert(dataString);
               console.log(dataString);
                  $.ajax({
                        type: "POST",
                        url: '/dashboard/staff/feature/order',
                        data:  dataString,
                        beforeSend: function (xhr) {
                           var token = $('meta[name="csrf-token"]').attr('content');
                              if (token) {
                                    return xhr.setRequestHeader('X-CSRF-TOKEN', token);
                              }
                           },
                        cache : false,
                        success: function(data){
                            console.log(data);

                        } ,error: function(xhr, status, error) {
                        // alert(error);
                        console.log(xhr.responseText); // this line will save you tons of hours while debugging
                     // do something here because of error
                        },
                  });
   // ===================================
            } else {
                  output.val('JSON browser support required for this demo.');
            }
       };

       // activate Nestable for list 1
       $('#nestable').nestable({
          group: 1
       })
       .on('change', updateOutput);
       // output initial serialised data
       updateOutput($('#nestable').data('output', $('#nestable-output')));

   });
</script>

@endsection
