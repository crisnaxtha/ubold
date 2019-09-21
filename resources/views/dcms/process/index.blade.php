@extends('dcms.layouts.app')
@section('css')

   <!--dynamic table-->
   @include('dcms.includes.nestable-assets.css')

@endsection

@section('content')
<!-- page start-->
@include('dcms.includes.breadcrumb')

<div class="row">
      <div class="col-sm-12">
         <section class="card">
            <div class="card-body">
                  @include('dcms.includes.buttons.button-create')
                  <br>
                  <br>
                <div class="alert alert-block alert-warning fade in">
                    <strong>Status : 1 Represent Active & 0 Represent Inactive !!</strong>
                </div>
                <div class="dd" id="nestable">
                        {{-- ==============Menu- DISPLAY==================== --}}
                    {!! $process !!}
                </div>
                <input type="hidden" id="nestable-output" >
            </div>
         </section>
      </div>
  </div>
@endsection

@section('js')
@include('dcms.includes.flash-message')
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
            url: '/dashboard/process/order',
            data:  dataString,
            beforeSend: function (xhr) {
                var token = $('meta[name="csrf-token"]').attr('content');
                    if (token) {
                        return xhr.setRequestHeader('X-CSRF-TOKEN', token);
                    }
                },
            cache : false,
            success: function(data){
                // alert(data);
            //   $("#load").hide();
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
        var x = confirm('Delete this menu?');
        var id = $(this).attr('id');
        // debugger;
        var url = "process/"+id;
        // alert(url);
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
                // debugger;
                $($object).parents('li').remove();
                console.log(response);
                // alert(response);
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
