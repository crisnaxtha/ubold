@extends('site.layouts.app')

@section('content')
<div class="mid_part inner_page">
        <div class="breadcrumb-col">
          <div class="container">
            <h4><i class="fa fa-info-circle" aria-hidden="true">&nbsp;</i> {{ $data['row']->title }}</h4>
            <ol class="breadcrumb">
              <li><a href="{{ route('site.index')  }}">Home</a></li>
              <li class="active">{{ ucwords(str_replace('-',' ',Request::segment(1)))}}</li>
            </ol>
          </div>
        </div>

          <section class="dtl_sec">
            <div class="container">
              <div class="row">
                <div class="col-md-9 col-sm-8">
                    @if(isset($data['row']->thumbanil))
                  <figure class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                    <img src="{{ $data['row']->thumbnail }}" alt="Details Image" />
                  </figure>
                  @endif
                {!!$data['row']->content !!}

                  <br/>

                      {{-- <table width="100%" border="0" class="table">
                              <thead>
                                <tr>
                                  <th scope="col">Title</th>
                                  <th scope="col">Size</th>
                                  <th scope="col">Type</th>
                                  <th scope="col">View</th>
                                  <th scope="col">Download</th>
                                </tr>
                               </thead>
                               <tbody>
                                <tr>
                                  <td>सम्पत्ति विवरण सम्बन्धमा</td>
                                  <td>670 Kb</td>
                                  <td>application/pdf</td>
                                  <td><a href="#" class="btn btn-sm btn-danger"><i class="fa fa-eye">&nbsp;</i> View</a></td>
                                  <td><a href="#" class="btn btn-sm btn-success"><i class="fa fa-download">&nbsp;</i> Download</a></td>
                                </tr>

                                <tr>
                                  <td>सम्पत्ति विवरण सम्बन्धमा</td>
                                  <td>670 Kb</td>
                                  <td>application/pdf</td>
                                  <td><a href="#" class="btn btn-sm btn-danger"><i class="fa fa-eye">&nbsp;</i> View</a></td>
                                  <td><a href="#" class="btn btn-sm btn-success"><i class="fa fa-download">&nbsp;</i> Download</a></td>
                                </tr>
                                <tr>
                                  <td>सम्पत्ति विवरण सम्बन्धमा</td>
                                  <td>670 Kb</td>
                                  <td>application/pdf</td>
                                  <td><a href="#" class="btn btn-sm btn-danger"><i class="fa fa-eye">&nbsp;</i> View</a></td>
                                  <td><a href="#" class="btn btn-sm btn-success"><i class="fa fa-download">&nbsp;</i> Download</a></td>
                                </tr>

                                <tr>
                                  <td>सम्पत्ति विवरण सम्बन्धमा</td>
                                  <td>670 Kb</td>
                                  <td>application/pdf</td>
                                  <td><a href="#" class="btn btn-sm btn-danger"><i class="fa fa-eye">&nbsp;</i> View</a></td>
                                  <td><a href="#" class="btn btn-sm btn-success"><i class="fa fa-download">&nbsp;</i> Download</a></td>
                                </tr>
                                </tbody>

                              </table> --}}

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
  </script>
@endsection
