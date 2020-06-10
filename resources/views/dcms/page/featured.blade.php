@extends('dcms.layouts.app')
@section('css')
       <!--dynamic table-->
       @include('dcms.includes.nestable-assets.css')
@endsection
@section('content')
@include('dcms.includes.breadcrumb')
<!-- page start-->
<div class="row">
    <div class="col-lg-12 col-md-12 col-xs-12">
        <section class="card-box">

            @include('dcms.includes.buttons.button-create')
            @include('dcms.page.includes.buttons.featured')
            <div class="btn-group float-right">
                    @include('dcms.includes.buttons.button-recycle')
            </div>
            <hr>
            <div class="card-body">

                @include('dcms.includes.flash_message_error')

                <div class="dd" id="nestable">
                    {!! $page !!}
                </div>
                <input type="hidden" id="nestable-output" >
            </div>
        </section>
    </div>
</div>
@endsection

@section('js')
@include('dcms.includes.nestable-assets.js')
<script>
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
              console.log(dataString);
              $.ajax({
                  type: "POST",
                  url: '/dashboard/page/order',
                  data:  dataString,
                  beforeSend: function (xhr) {
                      var token = $('meta[name="csrf-token"]').attr('content');
                          if (token) {
                              return xhr.setRequestHeader('X-CSRF-TOKEN', token);
                          }
                      },
                  cache : false,
                  success: function(data){
                     //  alert(data);
                    // $("#load").hide();
                  } ,error: function(xhr, status, error) {
                    alert(error);
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


      $(document).on("click",".del-button",function() {
              var x = confirm('Delete this Page?');
              var id = $(this).attr('id');
            //   debugger;
              var url = id;
            //   alert(url);
            $object=$(this);
              if(x){
                   $.ajax({
                  url: url,
                  type: 'DELETE',
                  beforeSend: function (xhr) {
                      var token = $('meta[name="csrf-token"]').attr('content');
                          if (token) {
                              return xhr.setRequestHeader('X-CSRF-TOKEN', token);
                          }
                      },
                  data: {
                      "id": id,
                  },
                  success: function(response){
                    //   debugger;
                    $($object).parents('li').remove();
                      console.log(response);
                    //   alert(response);
                      alert('Successfully Deleted!!');
                  },
                  error: function(xhr, status, error) {
                        alert(error);
                      },
                  });
              }
      });

      </script>

@endsection
