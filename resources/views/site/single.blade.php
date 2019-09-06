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
              <input type="radio" name="smiley" value="sad" class="sad">
              <input type="radio" name="smiley" value="neutral" class="neutral">
              <input type="radio" name="smiley" value="happy" class="happy" checked="checked">
              <div> &nbsp; Feeling <span id="result">happy</span></div>
            </div>
          </div>
          <div class="col-lg-7 col-md-5">
            <input type="text" class="form-control" name="text" placeholder="Your Name" />
          </div>
          <div class="col-lg-2 col-md-3">
            <button type="button" class="btn btn-success">Submit</button>
          </div>
          <div class="clearfix"></div>
        </div>


        <div class="clearfix"></div>
      </form>

                </div>

        <div class="col-lg-3 col-md-3 page_sidebar">

          <div class="widget-box">
            <div class="dash_info">
              <div class="owl-carousel info-carousel2">
                <div class="item">
                  <div class="card">
                    <div class="card-header"><i class="fa fa-clock-o">&nbsp;</i> आजको दिन </div>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-6">
                          <span>मो.बि.न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>का.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="col-md-6">
                          <span>ले बि न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>ठ.बि.न  :</span> <span class="counter">433143</span>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="card">
                    <div class="card-header"><i class="fa fa-calendar">&nbsp;</i> Last Week </div>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-6">
                          <span>मो.बि.न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>का.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="col-md-6">
                          <span>ले बि न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>ठ.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="card">
                    <div class="card-header"><i class="fa fa-calendar">&nbsp;</i> Last Month </div>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-6">
                          <span>मो.बि.न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>का.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="col-md-6">
                          <span>ले बि न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>ठ.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="card">
                    <div class="card-header"><i class="fa fa-clock-o">&nbsp;</i> आजको दिन </div>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-6">
                          <span>मो.बि.न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>का.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="col-md-6">
                          <span>ले बि न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>ठ.बि.न  :</span> <span class="counter">433143</span>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="card">
                    <div class="card-header"><i class="fa fa-calendar">&nbsp;</i> Last Week </div>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-6">
                          <span>मो.बि.न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>का.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="col-md-6">
                          <span>ले बि न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>ठ.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="card">
                    <div class="card-header"><i class="fa fa-calendar">&nbsp;</i> Last Month </div>
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-6">
                          <span>मो.बि.न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>का.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="col-md-6">
                          <span>ले बि न :</span> <span class="counter">456654</span>
                        </div>
                        <div class="col-md-6">
                          <span>ठ.बि.न :</span> <span class="counter">433143</span>
                        </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                  </div>
                </div>
                </div>
            </div>
          </div>
              <div class="widget-box">
              <h3> <i class="fa fa-link" aria-hidden="true">&nbsp;</i> महत्त्वपूर्ण लिङ्कहरू</h3>
              <ul class="useful-link">
                  <li><a href="#" class=""><i class="fa fa-bell"></i>
                   Information Rights</a></li>
                   <li><a href="#" class=""><i class="fa fa-fa fa-leanpub"></i>
                   Publications</a></li>
                   <li><a href="#" class=""><i class="fa fa-comments-o"></i>
                   Feedbacks</a></li>
                   <li><a href="#" class=""><i class="fa fa-file-archive-o"></i>
                   Archive</a></li>
                   <li><a href="#" class=""><i class="fa fa-envelope"></i>
                   मेल हेर्नुहोस</a></li>
                   <li><a href="#" class=""><i class="fa fa-copy"></i>
                   बिलहरुको सार्बजनिकरण</a></li>
                </ul>

          </div>

                  <div class="widget-box">
                      <h3><i class="fa fa-external-link-square">&nbsp;</i> Category List
                        <a href="#">View All</a> </h3>
                        <div class="archive-widget">
                          <ul>
                            <li>
                            <a href="javascript:void(0)">
                              <span>
                                <i class="fa fa-bookmark" aria-hidden="true"></i>
                              </span>
                              Gov of Nepal
                            </a>
                            </li>
                            <li>
                            <a href="javascript:void(0)">
                              <span>
                                <i class="fa fa-bookmark" aria-hidden="true"></i>
                              </span>
                              Ministry of EDU
                            </a>
                            </li>
                            <li>
                            <a href="javascript:void(0)">
                              <span>
                                <i class="fa fa-bookmark" aria-hidden="true"></i>
                              </span>
                              Ministry of Finance
                            </a>
                            </li>
                            <li>
                            <a href="javascript:void(0)">
                              <span>
                                <i class="fa fa-bookmark" aria-hidden="true"></i>
                              </span>
                              Dept. of EDU
                            </a>
                            </li>
                          </ul>
                        </div>
                      </div>

            {{-- <div class="widget-box">
            <h3> <i class="fa fa-newspaper-o">&nbsp;</i> Publications</h3>
            <div class="side-widget">
            <div class="owl-carousel info-carousel3">
                <div class="item">
                  <ul>
                      <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-2.jpg" alt="img"></a></div>
                        <div class="text-area">
                          <a href="javascript:void(0)">Internship Jobs join in next week dummy text...</a>
                        </div>
                        <div class="author_sec">
                          <span><i class="fa fa-eye" aria-hidden="true"></i> <em>10</em></span>
                          <span><i class="fa fa-user" aria-hidden="true"></i> <em>Admin</em></span>
                          <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>8/6/2019</em></span>
                        </div>
                      </li>
                      <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-3.jpg" alt="img"></a></div>
                        <div class="text-area"> <a href="javascript:void(0)">Contractors decide to
                          built housing  week dummy text...</a>
                        </div>
                        <div class="author_sec">
                          <span><i class="fa fa-eye" aria-hidden="true"></i> <em>10</em></span>
                          <span><i class="fa fa-user" aria-hidden="true"></i> <em>Bikash Bhandari</em></span>
                          <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>8/6/2019</em></span>
                        </div>
                      </li>
                      <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-4.jpg" alt="img"></a></div>
                        <div class="text-area"> <a href="javascript:void(0)">Contractors decide to
                          built housing dummy text...</a>
                        </div>
                        <div class="author_sec">
                          <span><i class="fa fa-eye" aria-hidden="true"></i> <em>10</em></span>
                          <span><i class="fa fa-user" aria-hidden="true"></i> <em>Admin</em></span>
                          <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>8/6/2019</em></span>
                        </div>
                      </li>
                    </ul>
                </div>
                <div class="item">
                  <ul>
                    <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-4.jpg" alt="img"></a></div>
                        <div class="text-area"> <a href="javascript:void(0)">Contractors decide to
                          built housing dummy text...</a>
                        </div>
                        <div class="author_sec">
                          <span><i class="fa fa-eye" aria-hidden="true"></i> <em>10</em></span>
                          <span><i class="fa fa-user" aria-hidden="true"></i> <em>Bikash Bhandari</em></span>
                          <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>8/6/2019</em></span>
                        </div>
                      </li>
                      <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-2.jpg" alt="img"></a></div>
                        <div class="text-area"> <a href="javascript:void(0)">Internship Jobs join in next week dummy text...</a>
                        </div>
                        <div class="author_sec">
                          <span><i class="fa fa-eye" aria-hidden="true"></i> <em>10</em></span>
                          <span><i class="fa fa-user" aria-hidden="true"></i> <em>Bikash Bhandari</em></span>
                          <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>8/6/2019</em></span>
                        </div>
                      </li>
                      <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-3.jpg" alt="img"></a></div>
                        <div class="text-area"> <a href="javascript:void(0)">Contractors decide to
                          built housing dummy text...</a>
                        </div>
                        <div class="author_sec">
                          <span><i class="fa fa-eye" aria-hidden="true"></i> <em>10</em></span>
                          <span><i class="fa fa-user" aria-hidden="true"></i> <em>Bikash Bhandari</em></span>
                          <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>8/6/2019</em></span>
                        </div>
                      </li>
                    </ul>
                </div>
                <div class="item">
                  <ul>
                    <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-2.jpg" alt="img"></a></div>
                        <div class="text-area"> <a href="javascript:void(0)">Internship Jobs join in next week dummy text...</a>
                        </div>
                        <div class="author_sec">
                          <span><i class="fa fa-eye" aria-hidden="true"></i> <em>10</em></span>
                          <span><i class="fa fa-user" aria-hidden="true"></i> <em>Bikash Bhandari</em></span>
                          <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>8/6/2019</em></span>
                        </div>
                      </li>
                      <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-3.jpg" alt="img"></a></div>
                        <div class="text-area"> <a href="javascript:void(0)">Contractors decide to
                          built housing dumy text...</a>
                        </div>
                        <div class="author_sec">
                          <span><i class="fa fa-eye" aria-hidden="true"></i> <em>10</em></span>
                          <span><i class="fa fa-user" aria-hidden="true"></i> <em>Bikash Bhandari</em></span>
                          <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>8/6/2019</em></span>
                        </div>
                      </li>
                    <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                        <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-4.jpg" alt="img"></a></div>
                        <div class="text-area"> <a href="javascript:void(0)">Contractors decide to
                          built housing dummy text...</a>
                        </div>
                        <div class="author_sec">
                          <span><i class="fa fa-eye" aria-hidden="true"></i> <em>10</em></span>
                          <span><i class="fa fa-user" aria-hidden="true"></i> <em>Bikash Bhandari</em></span>
                          <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>8/6/2019</em></span>
                        </div>
                      </li>
                    </ul>
                </div>
            </div> --}}

        </div>
                    </div>
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
