@extends('site.layouts.app')

@section('content')

<div class="mid_part">
    <div class="container">

      <div class="row">
        <div class="col-lg-9 col-md-8">

          <div class="dash_info row">
                <div class="col-lg-4 col-md-6 col-sm-6">
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

                <div class="col-lg-4 col-md-6 col-sm-6">
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

                <div class="col-lg-4 col-md-6 col-sm-6">
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
                <div class="clearfix"></div>
              </div>


          <div class="chart_sec row">
            <div class="col-lg-6 pad-right-0">
              <div class="card bar-chart-example">
                <div class="card-header d-flex align-items-center">
                  <h5>Yearly Expense</h5>
                </div>
                <div class="card-body">
                  <canvas id="barChartExample"></canvas>
                </div>
              </div>
            </div>
            <div class="col-lg-6 pad-left-0">
              <div class="card line-chart-example">
                <div class="card-header d-flex align-items-center">
                  <h5>Satisfaction</h5>
                </div>
                <div class="card-body">
                  <canvas id="lineChartExample"></canvas>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
          @if(isset($data['imp_link']))
                <div class="main-link card">
                  <div class="card-header"><h4>{{ __('Important Links') }}</h4></div>
                      <div class="card-body">
                      <ul class="useful-link">
                          @foreach($data['imp_link'] as $row)
                        <li><a href="{{ $row->url }}" class="btn btn-info hover-ripple">
                         {{ $row->name }}</a></li>
                         @endforeach
                      </ul>
                      <div class="clearfix"></div>
                    </div>
                  </div>
        @endif





  <div class="tab_sec">
  <ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" id="home-tab" data-toggle="tab" href="#info" role="tab" aria-controls="home" aria-selected="true"><i class="fa fa-bell">&nbsp;</i> सूचना</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="profile-tab" data-toggle="tab" href="#press" role="tab" aria-controls="profile" aria-selected="false"><i class="fa fa-file-text">&nbsp;</i> प्रेस बिज्ञप्ति</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="contact-tab" data-toggle="tab" href="#news" role="tab" aria-controls="contact" aria-selected="false"><i class="fa fa-newspaper-o">&nbsp;</i> समाचार</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="contact-tab" data-toggle="tab" href="#patra" role="tab" aria-controls="contact" aria-selected="false"><i class="fa fa-file">&nbsp;</i> बोलपत्र</a>
    </li>
  </ul>
  <div class="tab-content card white-box" id="myTabContent">
    <div class="tab-pane fade show active" id="info" role="tabpanel" aria-labelledby="home-tab">
          <div class="owl-carousel info-carousel">
            @if(isset($data['cat_post_1']))
            @foreach($data['cat_post_1'] as $row)
              <div class="item">
                <div class="item-inner card">
                  {{-- <figure><a href="#"><img src="images/service/service-1.jpg" class="img-fluid" alt="image"></a></figure> --}}
                <div class="card-body">
                  <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i>{{ $row->created_at }}</div>
                  <a href="#">
                    <h6 class="card-title">{{ $row->title }}</h6>
                  </a>
                  {!! mb_strimwidth($row->content, 0, 100, "...") !!}
                </div>
                </div>
              </div>
              @endforeach
              @endif
          </div>

    </div>
    <div class="tab-pane fade" id="press" role="tabpanel" aria-labelledby="press-tab">
        <div class="owl-carousel info-carousel">
            @if(isset($data['cat_post_2']))
            @foreach($data['cat_post_2'] as $row)
            <div class="item">
              <div class="item-inner card">
                {{-- <figure><a href="#"><img src="images/service/service-1.jpg" class="img-fluid" alt="image"></a></figure> --}}
              <div class="card-body">
                <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i>{{ $row->created_at }}</div>
                <a href="#">
                  <h6 class="card-title">{{ $row->title }}</h6>
                </a>
                {!! mb_strimwidth($row->content, 0, 100, "...") !!}
              </div>
              </div>
            </div>
            @endforeach
            @endif
        </div>
    </div>
    <div class="tab-pane fade" id="news" role="tabpanel" aria-labelledby="news-tab">
      <div class="owl-carousel info-carousel">

            @if(isset($data['cat_post_3']))
            @foreach($data['cat_post_3'] as $row)
            <div class="item">
              <div class="item-inner card">
                {{-- <figure><a href="#"><img src="images/service/service-1.jpg" class="img-fluid" alt="image"></a></figure> --}}
              <div class="card-body">
                <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i>{{ $row->created_at }}</div>
                <a href="#">
                  <h6 class="card-title">{{ $row->title }}</h6>
                </a>
                {!! mb_strimwidth($row->content, 0, 100, "...") !!}
              </div>
              </div>
            </div>
            @endforeach
            @endif
          </div>
    </div>
    <div class="tab-pane fade" id="patra" role="tabpanel" aria-labelledby="patra-tab">
      <div class="owl-carousel info-carousel">
            @if(isset($data['cat_post_4']))
            @foreach($data['cat_post_4'] as $row)
            <div class="item">
              <div class="item-inner card">
                {{-- <figure><a href="#"><img src="images/service/service-1.jpg" class="img-fluid" alt="image"></a></figure> --}}
              <div class="card-body">
                <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i>{{ $row->created_at }}</div>
                <a href="#">
                  <h6 class="card-title">{{ $row->title }}</h6>
                </a>
                {!! mb_strimwidth($row->content, 0, 100, "...") !!}
              </div>
              </div>
            </div>
            @endforeach
            @endif
          </div>
    </div>
  </div>



  </div>
  @if(isset($data['video']))
  <div class="vdo_sec">
    <div class="my-ttl">सबै भिडियोहरू</div>
    <div class="owl-carousel vdo-carousel">
        @foreach($data['video'] as $row)
              <div class="item">
               {!! $row->link !!}
              </div>
        @endforeach
    </div>
    <div class="clearfix"></div>
  </div>
  </div>
  @endif
  @if(isset($data['member']))
        <div class="col-lg-3 col-md-4">
          <div class="home_members">
            <div class="members text-center">
                @foreach($data['member'] as $row)
                @if($loop->iteration == 1 || $loop->iteration == 4 || $loop->iteration == 5 || $loop->iteration == 6)
              <div class="member_single">
                <img src="{{ $row->image }}" alt="{{ $row->name }}" class="img-fluid mx-auto">
              <h6 class="text-center mt-3">
                <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
                        {{ $row->name }}</a>
              </h6>
              <p class="text-center">{{ $row->designation }}</p>
              </div>
              @endif
              @if($loop->iteration == 2 || $loop->iteration == 3)
              @if($loop->iteration == 2 )
              <div class="member_multiple">
              <div class="row">
                <div class="col-md-6">
                  <img src="{{ $row->image }}" alt="{{ $row->name }}'" class="img-fluid mx-auto">
              <h6 class="text-center mt-3">
                <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
                        {{ $row->name }}</a>
              </h6>
              <p class="text-center">{{ $row->designation }}</p>
                </div>
                @endif

                @if($loop->iteration == 3)
                <div class="col-md-6">
                        <img src="{{ $row->image }}" alt="{{ $row->name }}'" class="img-fluid mx-auto">
                    <h6 class="text-center mt-3">
                      <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
                              {{ $row->name }}</a>
                    </h6>
                    <p class="text-center">{{ $row->designation }}</p>
                      </div>
                <div class="clearfix"></div>
              </div>
              </div>
              @endif
              @endif
              @endforeach
            </div>
          </div>

          @endif
  <div class="twitter-feeds">
      <a class="twitter-timeline" data-height="700" data-width="100%"
         href="https://twitter.com/TechBikash">गृह मन्त्रालय</a>
      <script async src="https://platform.twitter.com/widgets.js"
              charset="utf-8"></script>
  </div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="clearfix"></div>
@if(isset($data['about_us']))
  <div class="white-box banner_sec">
        <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">
            <h2>{{ $data['about_us']->title  }}</h2>
            {{-- <h3>Reputed</h3> --}}
            {!! mb_strimwidth($data['about_us']->content, 0, 700, "...") !!}
            @if(route::has('site.page.show'))
            <a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}" class="btn btn-info">{{__('View more')}}</a>
            @endif
          </div>
          <div class="col-md-6 col-sm-6 wow fadeInRight" data-wow-duration="1s" data-wow-delay=".3s">
            <figure><img src="{{ $data['about_us']->thumbnail }}" alt="banner image" class="img-fluid"/></figure>
          </div>
          <div class="clearfix"></div>
        </div>
        </div>
  </div>
  <div class="clearfix"></div>
  @endif
  <div class="white-box sewa">
    <div class="container">
  <div class="card">
    <div class="card-header">
      <h4>शासन  सेवा </h4>
    </div>
    <div class="card-body">
      <div class="row">
        <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
          <h5><i class="fa fa-user">&nbsp;</i> स्वचालित कार्य </h5>
          <a href="#">स्वचालित कार्य प्रणालि हेर्न यहाँ  क्लिक गर्नुहोस्</a>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".3s">
          <h5><i class="fa fa-user">&nbsp;</i> जन गुनासो  </h5>
          <a href="#">वेब  मेल  जन गुनासो हेर्न यहाँ  क्लिक गर्नुहोस्</a>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".4s">
          <h5><i class="fa fa-user">&nbsp;</i> परिपत्र  प्रणाली  </h5>
          <a href="#">परिपत्र  प्रणाली  आन्तरिक सन्देशहरु पठाउन यहाँ  क्लिक गर्नुहोस्</a>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
          <h5><i class="fa fa-user">&nbsp;</i> विधुतीय हाजिरी  </h5>
          <a href="#">विधुतीय हाजिरी प्रणाली नेपाल सरकार किन्द्र्य निकाय हेर्न यहाँ  क्लिक गर्नुहोस्</a>
        </div>

        <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
          <h5><i class="fa fa-user">&nbsp;</i> मोबाइल एप  </h5>
          <a href="#">मन्त्रालय संचालन मा भएको मोबाइल एप  हेर्न यहाँ  क्लिक गर्नुहोस्</a>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".3s">
          <h5><i class="fa fa-user">&nbsp;</i> GIS नक्सा </h5>
          <a href="#">स्थानीय तह हरुको वेबसाइटको विवरण  हेर्न यहाँ  क्लिक गर्नुहोस्</a>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".4s">
          <h5><i class="fa fa-user">&nbsp;</i> ICT ब्लग  </h5>
          <a href="#">ICT ब्लग  हेर्न यहाँ  क्लिक गर्नुहोस्</a>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
          <h5><i class="fa fa-user">&nbsp;</i> वेबसाइट (स्थानीय तह)</h5>
          <a href="#">स्थानीय तह को वेबसाइटहरु  हेर्न यहाँ  क्लिक गर्नुहोस्</a>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
  </div>
  </div>





  <div class="gallery">
    <div class="container">
      <h4>ग्यालरी  एल्बम</h4>
  <div class="row">
    <div class="col-md-4">
        <div class="owl-carousel gallery-carousel">
              <div class="item">
                <div class="item-inner card">
                  <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                <div class="card-body">
                  <a href="#">
                    <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                  </a>
                  <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner card">
                  <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                <div class="card-body">
                  <a href="#">
                    <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                  </a>
                  <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner card">
                  <figure><a href="#"><img src="images/service/service-4.jpg" class="img-fluid" alt="image"></a></figure>
                <div class="card-body">
                  <a href="#">
                    <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                  </a>
                  <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                </div>
                </div>
              </div>
              <div class="item">
                  <div class="item-inner card">
                    <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                  <div class="card-body">
                    <a href="#">
                      <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                    </a>
                    <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                  </div>
                  </div>
                </div>
          </div>
    </div>
    <div class="col-md-4">
        <div class="owl-carousel gallery-carousel2">
              <div class="item">
                <div class="item-inner card">
                  <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                <div class="card-body">
                  <a href="#">
                    <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                  </a>
                  <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner card">
                  <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                <div class="card-body">
                  <a href="#">
                    <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                  </a>
                  <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner card">
                  <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                <div class="card-body">
                  <a href="#">
                    <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                  </a>
                  <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                </div>
                </div>
              </div>
              <div class="item">
                  <div class="item-inner card">
                    <figure><a href="#"><img src="images/service/service-4.jpg" class="img-fluid" alt="image"></a></figure>
                  <div class="card-body">
                    <a href="#">
                      <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                    </a>
                    <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                  </div>
                  </div>
                </div>
          </div>
    </div>
    <div class="col-md-4">
        <div class="owl-carousel gallery-carousel3">
              <div class="item">
                <div class="item-inner card">
                  <figure><a href="#"><img src="images/service/service-2.jpg" class="img-fluid" alt="image"></a></figure>
                <div class="card-body">
                  <a href="#">
                    <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                  </a>
                  <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner card">
                  <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                <div class="card-body">
                  <a href="#">
                    <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                  </a>
                  <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner card">
                  <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                <div class="card-body">
                  <a href="#">
                    <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                  </a>
                  <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                </div>
                </div>
              </div>
              <div class="item">
                  <div class="item-inner card">
                    <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                  <div class="card-body">
                    <a href="#">
                      <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                    </a>
                    <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                  </div>
                  </div>
                </div>
          </div>
    </div>
    <div class="clearfix"></div>
  </div>



    </div>
  </div>


    <div class="clearfix"></div>
  </div>

@endsection

@section('js')
<script type="text/javascript">
    $(document).ready(function() {
      new WOW().init();
    })
  </script>

  <script>
    $(document).ready(function(){
      $('.moremenu').click(function(event){

        if ( $(this).hasClass('active') ) {
          $(this).removeClass('active');
      } else {
          $('.moremenu.active').removeClass('active');
          $(this).addClass('active');
      }

          event.stopPropagation();
           $(".megamenu").slideToggle("slow");
      });
      $(".megamenu").on("click", function (event) {
          event.stopPropagation();
      });
  });

  $(document).on("click", function () {
      $(".megamenu").hide();
      $(".moremenu").removeClass('active');
  });
  </script>
@endsection


