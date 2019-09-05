@extends('site.layouts.app') @section('content')
<div class="mid_part inner_page">
   <div class="inner_banner" style="background: url({{asset('assets/site/assets/images/rara-iw-adventure.jpg')}}); background-size: cover; background-attachment: fixed; width: 100%;"></div>
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
               <div class="card">
                  <div class="card-header">
                     <h4> <i class="fa fa-list-ol">&nbsp;</i> विभागको सदस्य सूचीहरू</h4>
                  </div>
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
                        @if($data['branch'])
                        @foreach($data['branch'] as $row)
                        <li class="nav-item">
                           <a class="nav-link @if($loop->iteration == 1) active @endif" id="vtab-{{ $loop->iteration }}" data-toggle="tab" href="#v-tabpanel-{{ $loop->iteration }}" role="tab" aria-controls="home" aria-selected="@if($loop->iteration == 1) true @else false @endif">{{ $row->name }}</a>
                        </li>
                        @endforeach
                        @endif
                        {{--
                        <li class="nav-item">
                           <a class="nav-link" id="planning-tab" data-toggle="tab" href="#planning" role="tab" aria-controls="planning" aria-selected="false">Planning Division</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="mgmt-tab" data-toggle="tab" href="#mgmt" role="tab" aria-controls="mgmt" aria-selected="false">Management Division</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="manpowerdiv-tab" data-toggle="tab" href="#manpowerdiv" role="tab" aria-controls="manpowerdiv" aria-selected="false">मानव संसाधन शाखा</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="economydiv-tab" data-toggle="tab" href="#economydiv" role="tab" aria-controls="economydiv" aria-selected="false">आर्थिक प्रशासन शाखा</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="progressdiv-tab" data-toggle="tab" href="#progressdiv" role="tab" aria-controls="progressdiv" aria-selected="false">भौतिक सुधार शाखा</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="budgetdiv-tab" data-toggle="tab" href="#budgetdiv" role="tab" aria-controls="budgetdiv" aria-selected="false">कार्यक्रम तथा बजेट शाखा</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="techdiv-tab" data-toggle="tab" href="#techdiv" role="tab" aria-controls="techdiv" aria-selected="false">प्राविधिक तथा व्यावसायिक शाखा</a>
                        </li>
                        --}}
                     </ul>
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
                           <p>Member Secretary, Board Member, National Examination Board, Nepal,  Chair Person, Regional Security Coordination Committee, Regional Administration Office, Mid-west, Surkhet, Chair Person Regional Security Coordination Committee, Regional Administration Office, Western, Pokhara.</p>
                           <hr/>
                           <br/>
                           <div class="home_members">
                              <div class="members text-center">
                                @if(!empty($row->staff))
                                @foreach($row->staff as $staffs)
                                @if($loop->iteration == 1)
                                 <div class="member_single">
                                    <img src="{{ asset($staffs->image)}}" alt="{{ $staffs->name }}'" class="img-fluid mx-auto">
                                    <h6 class="text-center mt-3">
                                        <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
                                        {{ $staffs->name }}</a>
                                    </h6>
                                    <p class="text-center">{{ $staffs->designation }}</p>
                                 </div>
                                @else
                                 {{-- <div class=""> --}}
                                    {{-- <div class="row"> --}}
                                       <div class="col-md-6">
                                          <img src="{{ asset($staffs->image)}}" alt="{{ $staffs->name }}'" class="img-fluid mx-auto">
                                          <h6 class="text-center mt-3">
                                             <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
                                            {{ $staffs->name }}</a>
                                          </h6>
                                          <p class="text-center">{{ $staffs->designation }}</p>
                                       </div>
                                       <div class="clearfix"></div>
                                    {{-- </div> --}}
                                 {{-- </div> --}}
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
