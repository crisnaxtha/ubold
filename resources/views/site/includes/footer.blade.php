<!-- footer -->
<footer>
    <!-- main footer -->

    <div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6 contact_person">
            @if(isset($data['common']->footer_first_title))
            <h4>{{ $data['common']->footer_first_title }}</h4>
            @endif
            @if(isset($data['common']->footer_first_description))
                {!! $data['common']->footer_first_description !!}
            @endif
                <div class="clearfix"></div>
             </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            @if(isset($data['common']->footer_second_title))
            <h4>{{ $data['common']->footer_second_title }}</h4>
            @endif
            @if(isset($data['common']->footer_second_description))
            {!! $data['common']->footer_second_description !!}
            @endif
            <div class="clearfix"></div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
              @if(isset($data['common']->footer_third_title))
            <h4>{{ $data['common']->footer_third_title }}</h4>
            @endif
            @if(isset($data['common']->footer_third_description))
            {!! $data['common']->footer_third_description !!}
            @endif
            <div class="clearfix"></div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
              @if(isset($data['common']->footer_fourth_title))
            <h4>{{ $data['common']->footer_fourth_title }}</h4>
            @endif
            @if(isset($data['common']->footer_fourth_description))
            {!! $data['common']->footer_fourth_description !!}
            @endif
            <div class="clearfix"></div>
          </div>
          <div class="col-lg-12 col-md-12 col-sm-12"> </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>

    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-7"> <span>Copyrights © <a href="index.html">NGOsite.com</a> - The NGO Evolution. All rights reserved.</span> </div>
          <div class="col-md-5 text-right"> <span>Powered by <a href=" http://tejobindu.com/" target="_blank">TBS</a></span> </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>

  </footer>
  <!-- /footer -->
