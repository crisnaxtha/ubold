{{-- @if(isset($data['recent_post']))
<aside>
    <div class="sidebar">
      <div class="widget-box">
        <h3>Recent Post</h3>
        <div class="events-widget">
          <ul>
            @foreach($data['recent_post'] as $row)
            <li>
                @include('site.includes.date.date-d-M')

              <div class="text-col"> <a href="{{ route('site.post.show', ['id' => $row->post_unique_id]) }}">{{ $row->title }} </a> </div>
            </li>
            @endforeach
          </ul>
        </div>
      </div>
    </div>
  </aside>
@endif --}}
<div class="widget-box">
        <div class="dash_info">
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

    <h3> <i class="fa fa-newspaper-o">&nbsp;</i>महत्त्वपूर्ण लिङ्कहरू</h3>
    <ul class="useful-link">
      <li><a href="#" class="btn btn-info hover-ripple"><i class="fa fa-bell"></i>
       Information Rights</a></li>
       <li><a href="#" class="btn btn-danger hover-ripple"><i class="fa fa-fa fa-leanpub"></i>
       Publications</a></li>
       <li><a href="#" class="btn btn-warning hover-ripple"><i class="fa fa-comments-o"></i>
       Feedbacks</a></li>
       <li><a href="#" class="btn btn-success hover-ripple"><i class="fa fa-file-archive-o"></i>
       Archive</a></li>
       <li><a href="#" class="btn btn-primary hover-ripple"><i class="fa fa-envelope"></i>
       मेल हेर्नुहोस</a></li>
       <li><a href="#" class="btn btn-dark hover-ripple"><i class="fa fa-copy"></i>
       बिलहरुको सार्बजनिकरण</a></li>
    </ul>

</div>

        <div class="widget-box">
            <h3><i class="fa fa-external-link-square">&nbsp;</i> Category List</h3>
              <div class="archive-widget">
                <ul>
                  <li>
                  <a href="javascript:void(0)">
                    <span>
                      <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
                    </span>
                    Government of Nepal
                  </a>
                  </li>
                  <li>
                  <a href="javascript:void(0)">
                    <span>
                      <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
                    </span>
                    Ministry of Education
                  </a>
                  </li>
                  <li>
                  <a href="javascript:void(0)">
                    <span>
                      <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
                    </span>
                    Ministry of Finance
                  </a>
                  </li>
                  <li>
                  <a href="javascript:void(0)">
                    <span>
                      <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
                    </span>
                    Department of Eductaion
                  </a>
                  </li>
                  <li>
                  <a href="javascript:void(0)">
                    <span>
                      <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
                    </span>
                    Financial Comptroller General
                  </a>
                  </li>
                  <li>
                  <a href="javascript:void(0)">
                    <span>
                      <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
                    </span>
                    WFP Nepal
                  </a>
                  </li>
                  <li>
                  <a href="javascript:void(0)">
                    <span>
                      <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
                    </span>
                    eSPR
                  </a>
                  </li>
                </ul>
              </div>
        <a href="#" class="btn btn-primary btn-block">सबै Category हेर्नुहोस</a>
            </div>

          <div class="widget-box">
              <h3> <i class="fa fa-newspaper-o">&nbsp;</i> Publications</h3>
              <div class="side-widget">
                <ul>
                  <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                    <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-2.jpg" alt="img"></a></div>
                    <div class="text-area"> <a href="javascript:void(0)">Internship Jobs join in next week...</a> <span><i class="fa fa-eye" aria-hidden="true"></i>Total Page View: <em>10</em></span>
                    </div>
                  </li>
                  <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                    <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-3.jpg" alt="img"></a></div>
                    <div class="text-area"> <a href="javascript:void(0)">Contractors decide to
                      built housing...</a> <span><i class="fa fa-eye" aria-hidden="true"></i>Total Page View: <em>18</em></span>
                    </div>
                  </li>
                  <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                    <div class="thumb"><a href="javascript:void(0)"><img src="images/news/news-widget-img-4.jpg" alt="img"></a></div>
                    <div class="text-area"> <a href="javascript:void(0)">Contractors decide to
                      built housing...</a> <span><i class="fa fa-eye" aria-hidden="true"></i>Total Page View: <em>20</em></span>
                    </div>
                  </li>
                </ul>
              </div>
          </div>
