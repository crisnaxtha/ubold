@extends('site.layouts.app')

@section('content')


<div id="banner" class="main-banner">
  <div class="owl-carousel banner-carousel">
    @if(isset($data['slider']))
    @foreach($data['slider'] as $row)
      <div class="item">
          <div class="caption-text">
              <h2>{{ $row->slider_name }}</h2>
              {{-- <p>Lorem ipsum dolor sit amet consectetur adipisicing elit</p> --}}
          </div>
          <figure><img src="{{asset($row->image)}}" alt="img" /></figure>
      </div>
    @endforeach
    @endif
  </div>
</div>
<div id="main">
   <section class="highlights-row">
      <div class="container">
          <div class="row">
              <div class="col-md-12 col-sm-6">
                  <div class="highlight-box">
                      <strong class="title">Recent News</strong>
                      <div class="owl-carousel" id="highlight-fade">
                          @if(isset($data['cat_recent_news']))
                          @foreach($data['cat_recent_news'] as $row)
                          <div class="item">
                              @if(isset($row->created_at))
                              <div class="top-col"><span class="date"><i class="fa fa-calendar" aria-hidden="true"></i>{{  Carbon\Carbon::parse($row->created_at)->format('d F Y') }}</span> </div>
                              @endif
                              @if(isset($row->title))
                                <b><a href="{{ route('site.post.show', ['id' => $row->post_unique_id]) }}">{{ $row->title }}</a></b>
                              @endif
                          </div>
                          @endforeach
                          @endif
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section> 
   {{-- <section class="member-board">
      <div class="container">
          <div class="heading-style-1">
              <h2>Respected <span>Members</span></h2>
              <em></em>
          </div>
          <div class="row">
              <div class="col-md-3">
                  <div class="item">
                      <div class="box staff-board-color">
                          <div class="round-image"><img src="assets/images/staff/staff-img-1.jpg" alt=""></div>
                          <h3><a href="">Giriraj Mani Pokhrel</a> </h3>
                          <p>Honourable Minister
                              <p>
                      </div>
                  </div>
              </div>
              <div class="col-md-3">
                  <div class="item">
                      <div class="box staff-board-color">
                          <div class="round-image"><img src="assets/images/staff/staff-img-2.jpg" alt=""></div>
                          <h3><a href="">Khaga Raj Baral</a> </h3>
                          <p>Secretary Education
                              <p>
                      </div>
                  </div>
              </div>
              <div class="col-md-3">
                  <div class="item">
                      <div class="box staff-board-color">
                          <div class="round-image"><img src="assets/images/staff/staff-img-3.jpg" alt=""></div>
                          <h3><a href="">Krishna Raj B.C</a> </h3>
                          <p>Secretary Science and Technology
                              <p>
                      </div>
                  </div>
              </div>
              <div class="col-md-3">
                  <div class="popular-notice">
                      <div class="popular-head">
                          <h3>Recent Posts</h3>
                      </div>
                      <div class="text-box">
                          <ul>
                              <li>
                                  <div class="text-col">
                                      <h4><a href="javascript:void(0)">कर्मचारी समायोजन प्रयोजनार्थ अद्यावधिक गरिएको जेष्ठता सूची सम्बन्धी सूचना</a></h4>
                                      <div class="btm-row">
                                          <ul>
                                              <li><i class="fa fa-calendar" aria-hidden="true"></i>17 Mar, 2018</li>
                                              <li><i class="fa fa-clock-o" aria-hidden="true"></i>5:20</li>
                                              <li><i class="fa fa-eye" aria-hidden="true"></i>204</li>
                                          </ul>
                                      </div>
                                  </div>
                              </li>
                              <li>
                                  <div class="text-col">
                                      <h4><a href="javascript:void(0)">Notice for Geneva University Scholarship</a></h4>
                                      <div class="btm-row">
                                          <ul>
                                              <li><i class="fa fa-calendar" aria-hidden="true"></i>27 Feb, 2018</li>
                                              <li><i class="fa fa-clock-o" aria-hidden="true"></i>7:39</li>
                                              <li><i class="fa fa-eye" aria-hidden="true"></i>106</li>
                                          </ul>
                                      </div>
                                  </div>
                              </li>
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>  --}}
  <section class="explore-section">
      <div class="container">
          <div class="row">
              @if(isset($data['about_us']))
              <div class="col-md-8">
                  <div class="heading-style-1">
                      @if(isset($data['about_us']->title))
                      <h2>{{ $data['about_us']->title  }}</h2>
                      @endif
                  </div>
                  @if(isset($data['about_us']->content))
                    {!! $data['about_us']->content  !!}
                    @if(route::has('site.page.show'))
                        <a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}" class="btn-style-1">View More</a>
                    @endif 
                  @endif
              </div>
              @endif
              @if(isset($data['popular_post']))
              <div class="col-md-4">
                  <div class="popular-notice">
                      <div class="popular-head">
                          <h3>Most Visited Links</h3>
                      </div>
                      <div class="text-box">
                          <ul>
                              @foreach($data['popular_post'] as $row)
                              <li>
                                  <div class="text-col">
                                      <h4><a href="{{ route('site.post.show', ['id' => $row->post_unique_id] )}}">{{ $row->title }}</a></h4>
                                      <div class="btm-row">
                                          <ul>
                                              <li><i class="fa fa-calendar" aria-hidden="true"></i>{{ $row->created_at }}</li>
                                              {{-- <li><i class="fa fa-clock-o" aria-hidden="true"></i></li> --}}
                                              <li><i class="fa fa-eye" aria-hidden="true"></i>{{ $row->visit_no }}</li>
                                          </ul>
                                      </div>
                                  </div>
                              </li>
                              @endforeach
                          </ul>
                      </div>
                  </div>
              </div>
              @endif
              <div class="clearfix"></div>
          </div>
      </div>
  </section>

@if(isset($data['cat_news_post']))
  <section class="upcoming-event">
      <div class="container">
          <div class="heading-style-1">
              <h2>See Our <span>Notices</span></h2>
          </div>
          <em></em> 
          @if(isset($data['cat_news']))
          <a href="{{ route('site.category.show', ['id'=> $data['cat_news']]) }}" class="btn-style-1">View All Notices</a>
          @endif
          <section class="event-slider">

              <div class="owl-carousel event-carousel">
                @foreach($data['cat_news_post'] as $row)
                  <div class="item">
                      <div class="event-caption animated zoomIn">

                          @include('site.includes.date.date-d-M')

                          <div class="text-col">
                            @if(route::has('site.post.show'))
                              <h3><a href="{{ route('site.post.show', ['id'=> $row->post_unique_id]) }}">@if(isset($row->title)){{ $row->title }}@endif</a></h3>
                            @endif
                            <p>{!!  mb_strimwidth("$row->content", 0, 130, "...") !!}</p>
                              @if(route::has('site.post.show'))
                              <a href="{{ route('site.post.show', ['id'=> $row->post_unique_id]) }}" class="btn-style-1">Notice Details</a> </div>
                              @endif
                      </div>
                      <figure><img src="{{asset('assets/site/assets/images/banner-1.png')}}" alt="img"></figure>
                  </div>
                  @endforeach
                  
              </div>
          </section>
      </div>
  </section> 
  @endif


  <section class="services-board">
      <div class="container">
          <div class="heading-style-1">
              <h2>Services And <span>Vision Board</span></h2>
              <em></em>
          </div>
          <div class="owl-carousel" id="services-slider">
              @if(isset($data['about_us']))
              <div class="item">
                  <div class="box board-color-1">
                      <div class="round-icon"><i class="fa fa-transgender-alt" aria-hidden="true"></i></div>
                      @if(isset($data['about_us']->title))
                      <h3><a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}">{{ $data['about_us']->title  }}</a></h3>
                      @endif
                      <p>Click to Visit.</p>
                  </div>
              </div>
              @endif
              @if(isset($data['about_us']))
              <div class="item">
                  <div class="box board-color-2">
                      <div class="round-icon"><i class="fa fa-graduation-cap" aria-hidden="true"></i></div>
                      @if(isset($data['about_us']->title))
                      <h3><a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}">{{ $data['about_us']->title  }}</a></h3>
                      @endif
                      <p>Click to Visit.</p>
                  </div>
              </div>
              @endif
              @if(isset($data['about_us']))
              <div class="item">
                  <div class="box board-color-3">
                      <div class="round-icon"><i class="fa fa-bar-chart" aria-hidden="true"></i></div>
                      @if(isset($data['about_us']->title))
                      <h3><a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}">{{ $data['about_us']->title  }}</a></h3>
                      @endif
                      <p>Click to Visit.</p>
                  </div>
              </div>
              @endif
              @if(isset($data['about_us']))
              <div class="item">
                  <div class="box board-color-4">
                      <div class="round-icon"><i class="fa fa-newspaper-o" aria-hidden="true"></i></div>
                      @if(isset($data['about_us']->title))
                      <h3><a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}">{{ $data['about_us']->title  }}</a></h3>
                      @endif
                      <p>Click to Visit.</p>
                  </div>
              </div>
              @endif
              
              @if(isset($data['about_us']))
              <div class="item">
                  <div class="box board-color-5">
                      <div class="round-icon"><i class="fa fa-gavel" aria-hidden="true"></i></div>
                      @if(isset($data['about_us']->title))
                      <h3><a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}">{{ $data['about_us']->title  }}</a></h3>
                      @endif
                      <p>Click to Visit.</p>
                  </div>
              </div>
              @endif
             
              @if(isset($data['about_us']))
              <div class="item">
                  <div class="box board-color-6">
                      <div class="round-icon"><i class="fa fa-flag" aria-hidden="true"></i></div>
                      @if(isset($data['about_us']->title))
                      <h3><a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}">{{ $data['about_us']->title  }}</a></h3>
                      @endif
                      <p>Click to Visit.</p>
                  </div>
              </div>
              @endif
             
              @if(isset($data['about_us']))
              <div class="item">
                  <div class="box board-color-7">
                      <div class="round-icon"><i class="fa fa-bank" aria-hidden="true"></i></div>
                      @if(isset($data['about_us']->title))
                      <h3><a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}">{{ $data['about_us']->title  }}</a></h3>
                      @endif
                      <p>Click to Visit.</p>
                  </div>
              </div>
              @endif

              @if(isset($data['about_us']))
              <div class="item">
                  <div class="box board-color-8">
                      <div class="round-icon"><i class="fa fa-briefcase" aria-hidden="true"></i></div>
                      @if(isset($data['about_us']->title))
                      <h3><a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}">{{ $data['about_us']->title  }}</a></h3>
                      @endif
                      <p>Click to Visit.</p>
                  </div>
              </div>
              @endif
             
          </div>
      </div>
  </section> 
 <section class="governor-message">
      <div class="holder">
          <!-- <span class="image-frame animated fadeInLeft"><img src="assets/images/kp_oli.png" alt="img"></span> -->
          <div class="text-box">
              <h2>Minister <span>Few Words</span></h2>
              <blockquote> <span>“</span> The Highest Glory of the Citizen’s Revolution was this: it connected in one indissoluble bond the principles of Civil Government with the principles of Humanity <em>”</em> </blockquote>
              <h4>By Minister:</h4>
              <strong class="name">Giriraj Mani Pokhrel</strong> </div>
      </div>
  </section> 
  <section class="community-citizen">
      <div class="holder">
          <div class="container">
              <div class="heading-style-1">
                  <h2>News Update, Notice  &amp; <span> Publication Section</span></h2>
              </div>
              <em></em>
              <div class="row">
                @if(isset($data['cat_news_post']))
                  <div class="col-md-4 col-sm-4">
                      <div class="box"> <i class="fa fa-flag" aria-hidden="true"></i>
                          <h4>News Update</h4>
                          <ul>
                              @foreach($data['cat_news_post'] as $row)
                                @if(route::has('site.post.show'))
                                    <li><a href="{{ route('site.post.show', ['id'=> $row->post_unique_id]) }}">@if(isset($row->title)){{ $row->title }}@endif</a></li>
                                @endif
                              @endforeach
                          </ul>
                          @if(isset($data['cat_news']))
                            <a href="{{ route('site.category.show', ['id'=> $data['cat_news']]) }}" class="btn-style-1">View All</a>
                          @endif 
                      </div>
                  </div>
                @endif
              
                @if(isset($data['cat_news_post']))
                  <div class="col-md-4 col-sm-4">
                      <div class="box"> <i class="fa fa-flag" aria-hidden="true"></i>
                          <h4>Notice Update</h4>
                          <ul>
                              @foreach($data['cat_notice_post'] as $row)
                                @if(route::has('site.post.show'))
                                    <li><a href="{{ route('site.post.show', ['id'=> $row->post_unique_id]) }}">@if(isset($row->title)){{ $row->title }}@endif</a></li>
                                @endif
                              @endforeach
                          </ul>
                          @if(isset($data['cat_news']))
                            <a href="{{ route('site.category.show', ['id'=> $data['cat_notice']]) }}" class="btn-style-1">View All</a>
                          @endif 
                      </div>
                  </div>
                @endif

                @if(isset($data['cat_news_post']))
                  <div class="col-md-4 col-sm-4">
                      <div class="box"> <i class="fa fa-flag" aria-hidden="true"></i>
                          <h4>Publication Update</h4>
                          <ul>
                              @foreach($data['cat_publication_post'] as $row)
                                @if(route::has('site.post.show'))
                                    <li><a href="{{ route('site.post.show', ['id'=> $row->post_unique_id]) }}">@if(isset($row->title)){{ $row->title }}@endif</a></li>
                                @endif
                              @endforeach
                          </ul>
                          @if(isset($data['cat_news']))
                            <a href="{{ route('site.category.show', ['id'=> $data['cat_publication']]) }}" class="btn-style-1">View All</a>
                          @endif 
                      </div>
                  </div>
                @endif
   
              </div>
          </div>
      </div>
  </section>
</div>


@endsection


 