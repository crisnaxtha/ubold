<!-- header -->
<header>
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6"> <a href="{{ route('site.index') }}" class="logo_sec">
          <div class="row">
            <div class="col-lg-3 col-md-4 pad-right-0">
            @if(isset($data['common']->logo))
                <img src="{{ asset($data['common']->logo) }}" alt="Main Logo" />
            @endif
             </div>
            <div class="col-lg-9 col-md-8 text-left logo_text">
                <span>{{ $data['common']->header_first_title }}</span>
                 <b>{{ $data['common']->header_second_title }}</b>
                 <span>{{ $data['common']->header_third_title}}</span> </div>
            <div class="clearfix"></div>
          </div>
          </a> </div>
        <div class="col-lg-6 col-md-6 col-sm-6 text-right">
          <div class="right-box text-right">
            <form class="navbar-form" role="search" action="{{ Route('site.search')}}" method="POST">
                    {{ csrf_field() }}
              <div class="input-group">
                <input class="form-control" placeholder="Search" name="keyword" id="srch-term" type="text">
                <div class="input-group-append">
                  <button class="btn btn-info" type="submit"><i class="fa fa-search"></i></button>
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
