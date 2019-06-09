<footer id="footer">
  {{-- <section class="footer-section-1">
      <div class="container">
          <div class="row">
              <div class="col-md-4 col-sm-6">
                  <div class="footer-box"> <strong class="footer-logo"><a href="javascript:void(0)"><img src="assets/images/logo-white.png" alt="img"></a></strong>
                      <div class="text-col">
                          <address>
                              <p><i class="fa fa-home"></i>Ministry of Education, Science and Technology</p>
                              <p><i class="fa fa-map-marker"></i>Singhadurbar, Kathmandu, Nepal </p>
                              <p><i class="fa fa-phone"></i> 977-01-1234567</p>
                              <p><i class="fa fa-fax"></i> 977-01-1234567</p>
                              <p><i class="fa fa-envelope"></i>info@moe.gov.np</p>
                              <p><i class="fa fa-globe"></i>www.moe.gov.np</p>
                          </address>
                      </div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-6">
                  <div class="footer-box">
                      <h3>Quick Links</h3>
                      <div class="links-widget">
                          <ul>
                              <li><a href="javascript:void(0)">Reports</a></li>
                              <li><a href="javascript:void(0)">Reports</a></li>
                              <li><a href="javascript:void(0)">Reports</a></li>
                              <li><a href="javascript:void(0)">Reports</a></li>
                              <li><a href="javascript:void(0)">Reports</a></li>

                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-6">
                  <div class="footer-box">
                      <h3>Important Links</h3>
                      <div class="links-widget">
                          <ul>
                              <li>
                                  <a href="javascript:void(0)"></a>Ministry of Education</li>
                              <li>
                                  <a href="javascript:void(0)"></a>Department of Education</li>
                              <li>
                                  <a href="javascript:void(0)"></a>Higher Secondary Education Board</li>
                              <li>
                                  <a href="javascript:void(0)"></a>Office of Controller of Examinations</li>
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section> --}}
  <section class="footer-section-2">
      <div class="container">
          <div class="footer-social"> <strong class="title">Be Social:</strong>
              <ul>
                  @if(isset($all_view['setting']->social_profile_fb))
                  <li><a href="{{ $all_view['setting']->social_profile_fb }}"><i class="fa fa-twitter social-color-1" aria-hidden="true"></i>Twitter</a></li>
                  @endif
                  @if(isset($all_view['setting']->social_profile_twitter))
                  <li><a href="{{ $all_view['setting']->social_profile_twitter }}"><i class="fa fa-facebook social-color-2" aria-hidden="true"></i>Facebook</a></li>
                  @endif
                  @if(isset($all_view['setting']->social_profile_linkedin))
                  <li><a href="{{ $all_view['setting']->social_profile_linkedin }}"><i class="fa fa-linkedin social-color-3" aria-hidden="true"></i>Linkedin</a></li>
                  @endif
                  @if(isset($all_view['setting']->social_profile_insta))
                  <li><a href="{{ $all_view['setting']->social_profile_insta }}"><i class="fa fa-instagram social-color-4" aria-hidden="true"></i>Instagram</a></li>
                  @endif
                  @if(isset($all_view['setting']->social_profile_youtube))
                  <li><a href="{{ $all_view['setting']->social_profile_youtube }}"><i class="fa fa-youtube-play social-color-6" aria-hidden="true"></i>Youtube</a></li>
                  @endif
              </ul>
          </div>
      </div>
  </section>
  <section class="footer-section-3">
      <div class="container"><strong class="copyrights">Copyright &copy {{ date('Y') }} @if(isset($all_view['setting']->site_name)) {{ $all_view['setting']->site_name }} @endif All Rights Reserved. Developed By: <a href="http://softechfoundation.com/" target="_blank">SoftechFoundation</a><br>Page rendered in {{ date('s', $_SERVER['REQUEST_TIME_FLOAT']) }} seconds using {{ memory_get_usage()/(1e+6) }} MB | No of Visit: @if(isset($all_view['view_count'])){{ $all_view['view_count']}}@endif</strong></div>
  </section>
</footer>