@extends('site.layouts.app') @section('content')
<div class="mid_part inner_page">
    @include('site.includes.banner-image')

   <div class="breadcrumb-col">
      <div class="container">
         <ol class="breadcrumb">
            <li><a href="index.html"><i class="fa fa-home"></i></a></li>
            <li class="active">Staff</li>
         </ol>
      </div>
      <!-- <div class="btm_style"><svg viewBox="0 0 1440 120" width="100%" height="100%" fill="#fff"><path d="M1440,21.2101911 L1440,120 L0,120 L0,21.2101911 C120,35.0700637 240,42 360,42 C480,42 600,35.0700637 720,21.2101911 C808.32779,12.416393 874.573633,6.87702029 918.737528,4.59207306 C972.491685,1.8109458 1026.24584,0.420382166 1080,0.420382166 C1200,0.420382166 1320,7.35031847 1440,21.2101911 Z"></path></svg></div> -->
   </div>
   <section class="staff_inner">
      <div class="container">
         <div class="row">
            <div class="col-lg-3 col-md-4 dept_list">
               <div id="sidebar">
                  <div class="card">
                     <div class="card-header">
                        <h4> <i class="fa fa-list-ol">&nbsp;</i> विभागको सदस्य सूचीहरू</h4>
                     </div>
                     <div class="card-body">
                        {{-- <form method="Post">
                           <div class="input-group">
                              <input type="text" class="form-control" placeholder="Search this Departnment">
                              <div class="input-group-append">
                                 <button class="btn btn-primary" type="button">
                                 <i class="fa fa-search"></i>
                                 </button>
                              </div>
                           </div>
                        </form> --}}
                        <ul class="nav nav-pills flex-column" id="myTab" role="tablist">
                           @if($data['branch'])
                           @foreach($data['branch'] as $row)
                           <li class="nav-item">
                              <a class="nav-link @if($loop->iteration == 1) active @endif" id="vtab-{{ $loop->iteration }}" data-toggle="tab" href="#v-tabpanel-{{ $loop->iteration }}" role="tab" aria-controls="home" aria-selected="@if($loop->iteration == 1) true @else false @endif">{{ $row->name }}</a>
                           </li>
                           @endforeach
                           @endif
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-9 col-md-8">
               <div class="card">
                  <div class="card-header">
                     <h4> <i class="fa fa-info-circle">&nbsp;</i>
                        विभागहरूका कर्मचारी विवरणहरूको बारेमा कृपया यहाँ शीर्षक राख्नुहोस्
                     </h4>
                  </div>
                  <div class="card-body">
                     <div class="tab-content" id="myTabContent">
                        @foreach($data['branch'] as $row)
                        <div class="tab-pane fade @if($loop->iteration == 1) show active @endif" id="v-tabpanel-{{ $loop->iteration }}" role="tabpanel" aria-labelledby="vtab-{{ $loop->iteration }}">
                           {{-- <p>Member Secretary, Board Member, National Examination Board, Nepal,  Chair Person, Regional Security Coordination Committee, Regional Administration Office, Mid-west, Surkhet, Chair Person Regional Security Coordination Committee, Regional Administration Office, Western, Pokhara.</p> --}}
                           <hr/>
                           <br/>
                           <div class="home_members">
                              <div class="members text-center">
                                @if(!empty($data['staff'.$loop->iteration]))
                                @foreach($data['staff'.$loop->iteration] as $staffs)

                                @if(count($staffs) == 1)
                                @foreach($staffs as $staff)
                                 <div class="member_single">
                                    @if(isset($staff['image']))
                                    <img src="{{ asset($staff['image'])}}" alt="{{ $staff['name'] }}'" class="img-fluid mx-auto">
                                    @else
                                    <img src="{{ asset('assets/site/assets/images/no-image.jpg')}}" alt="{{ $staff['name'] }}'" class="img-fluid mx-auto">
                                    @endif
                                    <h6 class="text-center mt-3">
                                        <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
                                        {{ $staff['name'] }}</a>
                                    </h6>
                                    <p class="text-center">{{ $staff['designation'] }}</p>
                                    @if(isset($staff['phone']))
                                    <small><i class="fa fa-phone">&nbsp;</i>{{ $staff['phone'] }}</small>
                                    @endif
                                 </div>
                                 @endforeach
                                @elseif(count($staffs) > 1)
                                <div class="member_multiple">
                                    <div class="row">
                                        @if(count($staffs) == 2)
                                            @php $x = 6 @endphp
                                        @elseif(count($staffs) == 3)
                                            @php $x = 4 @endphp
                                        @else
                                            @php $x = 3  @endphp
                                        @endif
                                        @foreach($staffs as $staff)
                                        <div class="col-md-{{ $x }}  wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                                            @if(isset($staff['image']))
                                            <img src="{{ asset($staff['image'])}}" alt="{{ $staff['name'] }}'" class="img-fluid mx-auto">
                                            @else
                                            <img src="{{ asset('assets/site/assets/images/no-image.jpg')}}" alt="{{ $staff['name'] }}'" class="img-fluid mx-auto">
                                            @endif
                                            <h6 class="text-center mt-3">
                                                <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
                                                {{ $staff['name'] }}</a>
                                            </h6>
                                            <p class="text-center">{{ $staff['designation'] }}</p>
                                            @if(isset($staff['phone']))
                                            <small><i class="fa fa-phone">&nbsp;</i>{{ $staff['phone'] }}</small>
                                            @endif
                                       </div>
                                       @endforeach
                                       <div class="clearfix"></div>
                                    </div>
                                 </div>
                                @endif
                                @endforeach
                                @endif
                              </div>
                           </div>
                        </div>
                        @endforeach
                    </div>
                </div>
               </div>
            </div>
            <div class="clearfix"></div>
         </div>
      </div>
      <!-- /container -->
   </section>
   <div class="clearfix"></div>
</div>
@endsection
