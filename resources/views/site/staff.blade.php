@extends('site.layouts.app') @section('content')

{{-- <section class="main-section__header">
    <div class="container">
        <div class="page-title-row">
            <div class="page-title-text page-title-col">
                <nav>
                    <ol class="breadcrumb breadcrumb--transparent">
                        <li class="breadcrumb-item"><a href="{{ route('site.index') }}">Home</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)">{{ ucwords(str_replace('-',' ',Request::segment(1)))}}</a></li>
@if(isset($data['row']->title))
                        <!--<li class="breadcrumb-item active">{{ $data['row']->title }}</li>-->
@endif
                    </ol>
                </nav>
                <hr/>
                <h1>MOEST Departments and Members</h1>
                <p>This page present all the departments and their relvent members.</p>
            </div>
            <div class="page-intro-image page-title-col">
                <div class="page-intro-img">
                    <svg xmlns="http://www.w3.org/2000/svg" class="img-top-circle" viewBox="0 0 197 197">
                        <path id="Subtraction_1" class="img-top-circle-path" data-name="Subtraction 1" d="M98.5,197a99.226,99.226,0,0,1-19.851-2,97.96,97.96,0,0,1-35.221-14.821A98.787,98.787,0,0,1,7.741,136.84,98,98,0,0,1,2,118.351a99.46,99.46,0,0,1,0-39.7A97.961,97.961,0,0,1,16.822,43.428,98.787,98.787,0,0,1,60.159,7.741,98,98,0,0,1,78.649,2a99.46,99.46,0,0,1,39.7,0,97.962,97.962,0,0,1,35.221,14.821,98.787,98.787,0,0,1,35.687,43.337A98,98,0,0,1,195,78.649a99.46,99.46,0,0,1,0,39.7,97.961,97.961,0,0,1-14.821,35.221,98.787,98.787,0,0,1-43.337,35.687A98,98,0,0,1,118.351,195,99.229,99.229,0,0,1,98.5,197Zm0-148a49.345,49.345,0,1,0,19.268,3.89A49.189,49.189,0,0,0,98.5,49Z" fill="rgba(255,255,255,0.17)"/>
                    </svg>
                    <img src="{{ asset('assets/site/assets/images/600x450.jpg')}}"/>
                    <!-- <img src="/assets/images/team_members.svg"/> -->
                    <svg xmlns="http://www.w3.org/2000/svg" class="img-bottom-circle" width="197" height="197" viewBox="0 0 197 197">
                        <path id="Subtraction_1" class="img-top-circle-path2" data-name="Subtraction 1" d="M98.5,197a99.226,99.226,0,0,1-19.851-2,97.96,97.96,0,0,1-35.221-14.821A98.787,98.787,0,0,1,7.741,136.84,98,98,0,0,1,2,118.351a99.46,99.46,0,0,1,0-39.7A97.961,97.961,0,0,1,16.822,43.428,98.787,98.787,0,0,1,60.159,7.741,98,98,0,0,1,78.649,2a99.46,99.46,0,0,1,39.7,0,97.962,97.962,0,0,1,35.221,14.821,98.787,98.787,0,0,1,35.687,43.337A98,98,0,0,1,195,78.649a99.46,99.46,0,0,1,0,39.7,97.961,97.961,0,0,1-14.821,35.221,98.787,98.787,0,0,1-43.337,35.687A98,98,0,0,1,118.351,195,99.229,99.229,0,0,1,98.5,197Zm0-148a49.345,49.345,0,1,0,19.268,3.89A49.189,49.189,0,0,0,98.5,49Z" fill="rgba(255,255,255,0.17)"/>
                    </svg>
                </div>
            </div>
        </div>
    </div>
</section>--}}

<section class="inner-panel-intro">
    <div class="container">
        <div class="content-intro">
            <div class="main-title hero-panel-title margin-no">
                <h1>Departments and Members</h1>
                <p>This page present all the departments and their relvent members.</p>
            </div>
            <div class="center-intro-text">
                <p> </p>
            </div>
        </div>
    </div>
</section>

<section class="main-section__content">
    <div class="container">

        <div class="content content--two-half">
            <div class="row">
                <div class="col-md-4">
                    <div class="vertical-tabpanel">
                        <ul class="nav nav-pills flex-column" id="myTab" role="tablist">
@if($data['branch'])
@foreach($data['branch'] as $row)
                            <li class="nav-item">
                                <a class="nav-link @if($loop->iteration == 1) active @endif" id="vtab-{{ $loop->iteration }}" data-toggle="tab" href="#v-tabpanel-{{ $loop->iteration }}"
                                    role="tab" aria-controls="Member branch 1" aria-selected="@if($loop->iteration == 1) true @else false @endif">{{ $row->name }}</a>
                            </li>
@endforeach
@endif
                        </ul>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="tab-content" id="myTabContent">
@if($data['branch'])
@foreach($data['branch'] as $row)
                        <div class="tab-pane fade @if($loop->iteration == 1) active show @endif" id="v-tabpanel-{{ $loop->iteration }}" role="tabpanel"
                            aria-labelledby="vtab-{{$loop->iteration }}">
                            <div class="team-panel">
                                <h4>{{ $row->name }}</h4>
                                <ul class="members-row-panel2 members-row-panel2--large">
@if(!empty($row->staff))
@foreach($row->staff as $staffs)
@if($loop->iteration == 1 || ($loop->iteration)%2 == 0 )
                                    <li>
@else
@endif
                                        <div class="home-sidebar">
                                            <div class="sidebar-image-block">
                                                <div class="image-only">
@if(isset($staffs->image))
                                                        <img src="{{ asset($staffs->image)}}" alt="img">
@else
                                                    <img src="{{ asset('upload_file/avatar/lochan.png')}}" alt="img">
@endif
                                                </div>
                                                <div class="sidebar-caption">
                                                    <h4>{{ $staffs->name }}<span>{{ $staffs->designation }}</span></h4>
                                                </div>
                                            </div>
                                        </div>
@if($loop->iteration == 1 || ($loop->iteration)%2 != 0 )
                                    </li>
@else
@endif
@endforeach
@endif
                                </ul>
                            </div>
                        </div>
@endforeach
@endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


@endsection
