@extends('site.layouts.app')

@section('content')
<div class="mid_part inner_page contact_page">

    @include('site.includes.banner-image')


        <div class="breadcrumb-col">
          <div class="container">
            <ol class="breadcrumb">
              <li><a href="index.html"><i class="fa fa-home"></i></a></li>
              <li class="active">Contact US</li>
            </ol>
          </div>
          <!-- <div class="btm_style"><svg viewBox="0 0 1440 120" width="100%" height="100%" fill="#fff"><path d="M1440,21.2101911 L1440,120 L0,120 L0,21.2101911 C120,35.0700637 240,42 360,42 C480,42 600,35.0700637 720,21.2101911 C808.32779,12.416393 874.573633,6.87702029 918.737528,4.59207306 C972.491685,1.8109458 1026.24584,0.420382166 1080,0.420382166 C1200,0.420382166 1320,7.35031847 1440,21.2101911 Z"></path></svg></div> -->
        </div>

          <section class="contact_us_inner">
            <div class="container">


              <div class="mapouter wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                <div class="gmap_canvas location_map">
                    {!! $all_view['setting']->contact_map !!}
                  {{-- <iframe width="100%" height="380" id="gmap_canvas" src="https://maps.google.com/maps?q=Babar%20Mahal&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe> --}}
                </div>
              </div>



              <div class="row">
                <div class="col-lg-8 col-md-8">
                  <h4>सुझाब तथा पर्तिक्रिय</h4>
                  <p>If you have a any quries please contact our office. we will respnd you within 48 hours. Thank you.</p>
                    @include('site.includes.message-success')
                  <form  action="{{ route('site.message') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                      <div class="col-md-12 col-sm-12 form-group">
                        <label>नाम:</label>
                        <input type="text" name="name" class="form-control" required="required" />
                      </div>
                      {{-- <div class="col-md-6 col-sm-6 form-group">
                        <label>थर:</label>
                        <input type="text" name="text" class="form-control" required="required" />
                      </div> --}}
                      <div class="col-md-6 col-sm-6 form-group">
                        <label>इ_मेल:</label>
                        <input type="email" name="email" class="form-control" required="required" />
                      </div>
                      <div class="col-md-6 col-sm-6 form-group">
                        <label>फोन नम्बर:</label>
                        <input type="number" name="number" class="form-control" required="required" />
                      </div>
                      {{-- <div class="col-md-12 col-sm-12 form-group">
                        <label>ठेगाना:</label>
                        <input type="text" name="text" class="form-control" required="required" />
                      </div> --}}
                      <div class="col-md-12 col-sm-12 form-group">
                        <label>टिप्पणी गर्नुहोस्:</label>
                        <textarea class="form-control" rows="5" name="message" placeholder="Write your comments here..."></textarea>
                      </div>

      {{-- <div class="col-md-6 col-sm-6 col-xs-12 form-group">
          <input type="text" name="text" class="form-control" placeholder="Type the code shown on captcha">
      </div>

      <div class="col-md-6 col-sm-6 col-xs-12 form-group captcha-sec">
          <img src="images/capcha.jpg"> <a class="refresh" href="#">Refresh</a>
      </div> --}}

        <div class="clearfix"></div>
      </div>
      <button type="submit" name="button" class="btn btn-info">Submit &nbsp; <i class="fa fa-paper-plane-o"></i></button>
                  </form>

                </div>
                <div class="col-lg-4 col-md-4 contact_address">
                  <h4>सम्पर्क ठेगाना </h4>

                  <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-4">
                      <i class="fa fa-home"></i>
                    </div>
                    <div class="col-lg-10 col-md-9 col-sm-8">
                      <p>{{ $all_view['setting']->contact_title }}</p>
                      <p>{{ $all_view['setting']->contact_address_1 }}</p>
                      <p>{{ $all_view['setting']->contact_address_2 }}</p>
                    </div>
                    <div class="clearfix"></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-4">
                      <i class="fa fa-volume-control-phone"></i>
                    </div>
                    <div class="col-lg-10 col-md-9 col-sm-8">
                      <p>फोन  नं :{{ $all_view['setting']->contact_phone }}</p>
                      <p>फ्याक्स नं :{{ $all_view['setting']->contact_fax }}</p>
                      <p>फोन  नं :{{ $all_view['setting']->contact_mobile }}</p>
                      {{-- <p>फ्याक्स नं : 01-4800733 </p> --}}
                    </div>
                    <div class="clearfix"></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-4">
                      <i class="fa fa-envelope-o"></i>
                    </div>
                    <div class="col-lg-10 col-md-9 col-sm-8">
                      <p>{{ $all_view['setting']->contact_email }}</p>
                      {{-- <p>info@ yourmallingaddress .gov.np</p> --}}
                      <p>हामीलाई तपाइको पर्तिक्रिया कुनै पनि समय पठाउनुहोस। </p>
                    </div>
                    <div class="clearfix"></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-4">
                      <i class="fa fa-globe"></i>
                    </div>
                    <div class="col-lg-10 col-md-9 col-sm-8">
                      <p><a href="#">{{ $all_view['setting']->site_url }}</a> </p>
                      <p>हाम्रो आधिकारिक साइट </p>
                    </div>
                    <div class="clearfix"></div>
                  </div>

                </div>
                <div class="clearfix"></div>
              </div>
            </div>
          </section>

        <div class="clearfix"></div>
      </div>

@endsection
