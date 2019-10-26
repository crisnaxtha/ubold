@extends('site.layouts.app')

@section('content')
<div class="mid_part inner_page">
    <div class="inner_banner" style="background: url({{asset('assets/site/assets/images/sheetal.jpg') }}); background-size: cover; background-attachment: fixed; width: 100%;">
    </div>
    <div class="breadcrumb-col">
        <div class="container">
        <ol class="breadcrumb">
            <li><a href="{{ route('site.index')  }}"><i class="fa fa-home"></i></a></li>
            <li class="active">{{ ucwords(str_replace('-',' ',Request::segment(1)))}}</li>
        </ol>
        </div>
    </div>
          <section class="dtl_sec">
            <div class="container">
              <div class="row">
                <div class="col-md-9 col-sm-8">
                  <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-lg-9 col-md-9">
                            <h4>&nbsp; <i class="fa fa-info-circle">&nbsp;</i> {{ $data['row']->title }}</h4>
                            </div>
                            <div class="col-lg-3 col-md-3">
                            <div class="share-box">
                            <ul>
                                    @php $current_url = url()->current(); @endphp
                                <li><a href="https://twitter.com/share?url={{$current_url}}" class="social-color-1"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="http://www.facebook.com/sharer.php?u={{$current_url}}" class="social-color-2"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="https://plus.google.com/share?url={{$current_url}}" class="social-color-3"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                {{-- <li><a href="javascript:void(0)" class="social-color-3"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="javascript:void(0)" class="social-color-4"><i class="fa fa-instagram" aria-hidden="true"></i></a></li> --}}
                            </ul>
                            <div class="clearfix"></div>
                            </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="card-body">
                        {!!$data['row']->content !!}
                    </div>
                  </div>
                  @if(count($data['file']) != 0)
                  @foreach($data['file'] as $row)
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="card dwn_box">
                                <div class="card-body text-center">
                                    <div class="ttl">{{ $row->title }}</div>
                                    <small>{{ $row->download_count }}'s Downloaded</small>
                                    <h6>
                                        <span><a href="{{ asset( $row->file) }}">
                                            <i class="fa fa-eye">&nbsp;</i> View
                                        </a></span> &nbsp; &nbsp; &nbsp;
                                        <span>
                                            <a href="{{ route('site.file.download', ['id'=> $row->id]) }}">
                                        <i class="fa fa-download">&nbsp;</i> Download </a>
                                        </span>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                  @endforeach
                  @endif
      <div class="clearfix"></div>
      <hr/>

      <form>
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <b>Rate This:</b>
                <div id="smileys">
                <input type="radio" name="reaction" data-value="sad" data-url="{{ URL::route('site.reaction') }}" data-id="{{ $data['row']->unique_id }}" class="sad" id="reaction">
                <input type="radio" name="reaction" data-value="neutral" data-url="{{ URL::route('site.reaction') }}" data-id="{{ $data['row']->unique_id }}" class="neutral" id="reaction">
                <input type="radio" name="reaction" data-value="happy" data-url="{{ URL::route('site.reaction') }}" data-id="{{ $data['row']->unique_id }}" class="happy" id="reaction" >
                {{-- <div> &nbsp; Feeling <span id="result">happy</span></div> --}}
                </div>
            </div>
            <form action="{{ URL::route('site.comment') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="col-lg-7 col-md-5">
                    <input type="text" class="form-control" name="comment" placeholder="Your Comment" id="u_comment"  />
                    <input type="hidden" name="unique_id" value="{{ $data['row']->unique_id }}" id="u_unique_id">
                </div>
                <div class="col-lg-2 col-md-3">
                    <button type="submit" id="submit" class="btn btn-success" data-url="{{ URL::route('site.comment') }}">Submit</button>
                </div>
            </form>
            <div class="clearfix"></div>
        </div>


        <div class="clearfix"></div>
      </form>

                </div>

                <div class="col-lg-3 col-md-3 page_sidebar">
                    @include('site.includes.sidebar')

                </div>
              </div>
            </div>
          </section>

        <div class="clearfix"></div>
      </div>



@endsection

@section('js')
<script>
    $('.print-window').click(function() {
      var mywindow = window.open('', 'PRINT', 'height=1000,width=900');

      mywindow.document.write('<html><head><title>' + document.title  + '</title>');
      mywindow.document.write('</head><body >');
      mywindow.document.write('<h1>' + document.title  + '</h1>');
      mywindow.document.write(document.getElementById('post-box').innerHTML);
      mywindow.document.write('</body></html>');

      mywindow.document.close(); // necessary for IE >= 10
      mywindow.focus(); // necessary for IE >= 10*/

      mywindow.print();
      mywindow.close();

      return true;

    });


$(document).on('click','#reaction', function () {
    var value = $(this).data('value');
    var id = $(this).data('id');
    var url = $(this).data('url');
    // alert(id);
    $object=$(this);
        $.ajax ({
            url: url,
            type: 'POST',
            dataType: "JSON",
            beforeSend: function (xhr) {
                var token = $('meta[name="csrf-token"]').attr('content');
                    if (token) {
                        return xhr.setRequestHeader('X-CSRF-TOKEN', token);
                    }
                },
            data: {
                id: id,
                value: value,
            },
            success: function(response){
                console.log(response);
                // $($object).parents('tr').remove();
                alert('Successfully!!');
                // location.reload(true);
            },
            error: function(xhr) {
                console.log(xhr.responseText); // this line will save you tons of hours while debugging
               // do something here because of error
              }
        });
        // reload();
});

// Ajax for our form
$(document).on('click','#submit', function () {
    event.preventDefault();
    var comment = $('#u_comment').val();
    var unique_id = $('#u_unique_id').val();
    var url = $(this).data('url');;
    // alert(comment);
    // alert(unique_id);
    // alert(url);

    var formData = {
        comment     : comment,
        unique_id    : unique_id,
    }

    $.ajax({
        type     : "POST",
        url      : url,
        beforeSend: function (xhr) {
                var token = $('meta[name="csrf-token"]').attr('content');
                    if (token) {
                        return xhr.setRequestHeader('X-CSRF-TOKEN', token);
                    }
                },
        data     : formData,
        cache    : false,

        success  : function(response) {
            console.log(response);
                // $($object).parents('tr').remove();
                alert('Successfully Deleted!!');
                // location.reload(true);
        },
            error: function(xhr) {
                console.log(xhr.responseText); // this line will save you tons of hours while debugging
               // do something here because of error
              }
    });


});


  </script>
@endsection
