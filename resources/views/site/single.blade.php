@extends('site.layouts.app')

@section('content')

<div id="inner-banner">
    <div class="container">
      <div class="inner-banner-heading">
        @if(isset($data['row']->title))
        <h1>{{ $data['row']->title }}</h1>
        @endif
      </div>
    </div>
    <div class="breadcrumb-col"> <a href="{{ route('site.index') }}" class="btn-back"><i class="fa fa-home" aria-hidden="true"></i>Back to Home</a>
      <ol class="breadcrumb">
        <li><a href="{{ route('site.index') }}">Home</a></li>
        <li><a href="javascript:void(0)">{{ Request::segment(2) }}</a></li>
        @if(isset($data['row']->title))
        <li class="active">{{ $data['row']->title }}</li>
        @endif
      </ol>
    </div>
  </div>
  <div id="main">
    <section class="blog-page news-section news-detail">
      <div class="container">
        <div class="row">
          <div class="col-md-9 col-sm-8">
              <button class="print-window btn btn-warning pull-right"><i class="fa fa-print"></i>&nbsp;Print</button>
              
            <div class="post-box" id="post-box">
              <div class="box">
                <div class="text-box">
                  <div class="tp-row">
                    @if(isset($data['row']->title))
                  <h3>{{ $data['row']->title }}</h3>
                  @endif
                    <div class="btm-row">
                      <ul>
                        <li><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Author: <span>Admin</span></li>
                        @if(isset($data['row']->created_at))
                        <li><i class="fa fa-clock-o" aria-hidden="true"></i> Time: <span> {{ $data['row']->created_at }}</span> </li>
                        @endif
                        <li><i class="fa fa-eye" aria-hidden="true"></i> Page Visit: <span>{{ $data['row']->visit_no }}</span></li>
                      </ul>
                    </div>
                  </div>
                  @if(isset($data['row']->thumbanil))
                  <div class="frame"><img src="{{ asset($data['row']->thumbnail) }}" alt="img"></div>
                  @endif
                  <div class="inner">
                    @if(isset($data['row']->content))
                    {!! $data['row']->content !!}
                    @endif
                   
                    @if(count($data['file']) != 0)
                    <table width="100%" border="0" class="table table-bordered table-striped">
                      <thead class="bg-primary">
                        <tr>
                          <th scope="col">Title</th>  
                          <th scope="col">Download Count</th>
                          <th scope="col">View & Download</th>
                        </tr>
                       </thead>
                       <tbody>
                         @foreach($data['file'] as $row)
                        <tr>
                          <td>{{ $row->title }}</td>
                          <td>{{ $row->download_count }}</td>
                          <td>
                            <a href="{{ asset( $row->file) }}" class="btn btn-sm btn-danger" target="_blank"><i class="fa fa-eye">&nbsp;</i> View</a>&nbsp;
                            <a href="{{ route('site.file.download', ['id'=> $row->id]) }}" class="btn btn-sm btn-success"><i class="fa fa-download">&nbsp;</i> Download</a></td>
                        </tr>
                        @endforeach
                      </tbody> 
                      </table>
                      @endif
                  
                    <div class="share-box"> <strong class="title">Share This :</strong>
                      <ul>
                          @php $current_url = url()->current(); @endphp
                        <li><a href="https://twitter.com/share?url={{$current_url}}" class="social-color-1"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="http://www.facebook.com/sharer.php?u={{$current_url}}" class="social-color-2"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="https://plus.google.com/share?url={{$current_url}}" class="social-color-3"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-4">
           @include('site.includes.sidebar')
          </div>
        </div>
      </div>
    </section>
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
  </script>
@endsection