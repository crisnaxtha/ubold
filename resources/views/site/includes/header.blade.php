<div class="top_sec">
<!-- header -->
<header>
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6"> <a href="{{ route('site.index') }}" class="logo_sec">
          <div class="row">
            <div class="col-lg-2 col-md-3 pad-right-0">
            @if(isset($data['common']->logo))
                <img src="{{ asset($data['common']->logo) }}" alt="Main Logo" height="90" width="100"/>
            @endif
             </div>
            <div class="col-lg-10 col-md-9 text-left logo_text">
                @if(isset($data['common']->header_first_title))
                <span>{{ $data['common']->header_first_title }}</span>
                @endif
                @if(isset($data['common']->header_second_title))
                 <b>{{ $data['common']->header_second_title }}</b>
                @endif
                @if(isset($data['common']->header_third_title))
                 <span>{{ $data['common']->header_third_title}}</span> </div>
                @endif
            <div class="clearfix"></div>
          </div>
          </a> </div>
        <div class="col-lg-6 col-md-6 col-sm-6 text-right">
          <div class="right-box text-right">
            <form class="navbar-form" role="search" action="{{ Route('site.search')}}" method="POST">
                    {{ csrf_field() }}
              <div class="input-group">
                <input class="form-control" placeholder="Search" name="keyword" id="srch-term" type="text" value="@if(isset($data['query'])) {{ $data['query'] }} @endif">
                <div class="input-group-append">
                    <button class="btn btn-info" type="submit"><i class="fa fa-search"></i></button>
                    {{-- <a href="javascript:void(0)" class="src-drop" title="Advance Search">
                        <span class="fa fa-sliders"></span>
                    </a> --}}
                </div>
              </div>

                <div class="src-drop-menu" style="display: none;">
                    <div class="text-left">
                      <h5><i class="fa fa-search"></i> Advance Search:</h5>
                      <div class="form-group">
                        <input type="text" name="text" class="form-control" placeholder="Name">
                      </div>
                      <div class="form-group">
                        <input type="text" name="text" class="form-control" placeholder="Address">
                      </div>
                      <div class="form-group">
                        <select class="form-control classic classic2">
                       input-group-prepend     <option> Select Training / Consulting </option>
                            <option>Service Category Training</option>
                            <option>Service Category Consulting</option>
                             <option>Service Category Coaching</option>
                          </select>
                      </div>
                      <div class="form-group">
                        <input type="date" name="date" class="form-control" placeholder="Date">
                      </div>

                     <div class="row">
                      <div class="col-sm-6 text-left">
                        <button type="reset" name="button" class="btn btn-sm btn-danger">Reset</button>
                      </div>
                      <div class="col-sm-6 text-right">
                        <button type="submit" name="button" class="btn btn-sm btn-primary">Search</button>
                      </div>
                     </div>
                  </div>
                </div>
            </form>
            <ul>
            @if(isset($all_view['lang']))
            @foreach($all_view['lang'] as $lang)
              <li>
                @if(Route::has('site.swap_language'))
                  <a href="{{ route('site.swap_language', ['lang_id'=>$lang->id])}}">@if(isset($lang->image))<img src="{{ $lang->image}}" alt="">@endif &nbsp; {{ $lang->name }}</a>
                @endif
            </li>
            @endforeach
            @endif
            </ul>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </header>
  <!-- /header -->

