@extends('site.layouts.app')

@section('content')

<div class="mid_part inner_page">

    <div class="inner_banner" style="background: url(assets/site/assets/images/rara-iw-adventure.jpg); background-size: cover; background-attachment: fixed; width: 100%;"></div>

    <div class="breadcrumb-col">
      <div class="container">
        <ol class="breadcrumb">
            <li><a href="{{ route('site.index')  }}"><i class="fa fa-home"></i></a></li>
            <li class="active">{{ ucwords(str_replace('-',' ',Request::segment(1)))}}</li>
        </ol>
      </div>
    </div>

  <section class="staff_inner">
  <div class="container">

  <div class="row">
    <div class="col-lg-3 col-md-4 dept_list">
    <div id="sidebar">
      <div class="card">
        <div class="card-header"><h4> <i class="fa fa-list-ol">&nbsp;</i> Services सूचीहरू</h4></div>
        <div class="card-body">

          <form method="Post">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search this Departnment">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </div>
              </div>
          </form>

           <ul class="nav nav-pills flex-column" id="myTab" role="tablist">
               @foreach($data['processes'] as $row)
              <li class="nav-item">
                <a class="nav-link @if($loop->iteration == 1) active @endif" id="{{$row['slug']}}-tab" data-toggle="tab" href="#{{$row['slug']}}" role="tab" aria-controls="home" aria-selected="true">
                <i class="fa fa-users"></i>{{ $row['process_name'] }}</a>
              </li>
              @endforeach
            </ul>
        </div>
       </div>
     </div>
   </div>

    <div class="col-lg-9 col-md-8">
        <div class="card">
        <div class="card-header"><h4> <i class="fa fa-info-circle">&nbsp;</i>
  विभागको Service विवरणहरूको बारेमा कृपया यहाँ शीर्षक राख्नुहोस्</h4></div>
        <div class="card-body">
          <div class="tab-content" id="myTabContent">
        @foreach($data['processes'] as $row)
            <div class="tab-pane fade show active" id="{{$row['slug']}}" role="tabpanel" aria-labelledby="home-tab">
              {!! $row['description'] !!}
              <hr/>
            @if(array_key_exists('child', $row))
                <div class="timeline">
                    <h4 class="text-center"><span>Official Service</span></h4>
                    <ul>
                    @foreach($row['child'] as $child)
                    <li>
                        <h6>Service {{ $loop->iteration}}</h6>
                        <div>
                        <h5>
                            {{ $child['process_name'] }}
                        </h5>
                        {!! $child['description'] !!}
                        <a  class="btn btn-sm btn-danger" href="{{ $child['url'] }}" target="_blank">View</a>
                        </div>
                    </li>
                   @endforeach
                    </ul>
                </div>
            @endif
            </div>
        @endforeach
            </div>
          </div>
    </div>
   </div>
    <div class="clearfix"></div>
</div>

  </div><!-- /container -->
  </section>

    <div class="clearfix"></div>
  </div>
@endsection

@section('js')

@endsection
