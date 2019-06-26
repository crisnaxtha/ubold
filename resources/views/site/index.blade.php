@extends('site.layouts.app')

@section('content')

<div class="mid_part">
        <div class="container">
          <div class="dash_info row">
            <div class="col-lg-3 col-md-4 col-sm-6">
              <div class="white-box">
                <div class="media-left">
                  <p>Today total work</p>
                  <h2><span class="counter">456654</span></h2>
                </div>
                <div class="media-right"> <i class="fa fa-signal"></i> </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
              <div class="white-box">
                <div class="media-left">
                  <p>Last day total work</p>
                  <h2><span class="counter">000433</span></h2>
                </div>
                <div class="media-right"> <i class="fa fa-line-chart"></i> </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
              <div class="white-box">
                <div class="media-left">
                  <p>Last year total work</p>
                  <h2><span class="counter">433143</span></h2>
                </div>
                <div class="media-right"> <i class="fa fa-bar-chart"></i> </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
              <div class="white-box">
                <div class="media-left">
                  <p>Last Week Total Work</p>
                  <h2><span class="counter">004409</span></h2>
                </div>
                <div class="media-right"> <i class="fa fa-area-chart"></i> </div>
              </div>
            </div>
            <div class="clearfix"></div>
          </div>

          <div class="row">
            <div class="col-lg-9 col-md-8">
              <div class="chart_sec row">
                <div class="col-lg-6 pad-right-0">
                  <div class="card bar-chart-example">
                    <div class="card-header d-flex align-items-center">
                      <h5>Yearly Expense</h5>
                    </div>
                    <div class="card-body">
                      <canvas id="barChartExample"></canvas>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 pad-left-0">
                  <div class="card line-chart-example">
                    <div class="card-header d-flex align-items-center">
                      <h5>Satisfaction</h5>
                    </div>
                    <div class="card-body">
                      <canvas id="lineChartExample"></canvas>
                    </div>
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="clearfix"></div>

                    <div class="main-link card">
                      <div class="card-header"><h4>महत्त्वपूर्ण लिङ्कहरू</h4></div>
                          <div class="card-body">
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
                          <div class="clearfix"></div>
                        </div>
                      </div>

      <div class="tab_sec">
      <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="home-tab" data-toggle="tab" href="#info" role="tab" aria-controls="home" aria-selected="true"><i class="fa fa-bell"></i> सूचना</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="profile-tab" data-toggle="tab" href="#press" role="tab" aria-controls="profile" aria-selected="false"><i class="fa fa-paper"></i> प्रेस बिज्ञप्ति</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="contact-tab" data-toggle="tab" href="#news" role="tab" aria-controls="contact" aria-selected="false">समाचार</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="contact-tab" data-toggle="tab" href="#patra" role="tab" aria-controls="contact" aria-selected="false">बोलपत्र</a>
        </li>
      </ul>
      <div class="tab-content card white-box" id="myTabContent">
        <div class="tab-pane fade show active" id="info" role="tabpanel" aria-labelledby="home-tab">
              <div class="owl-carousel info-carousel">
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-1.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-2.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-4.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
              </div>

        </div>
        <div class="tab-pane fade" id="press" role="tabpanel" aria-labelledby="press-tab">
          <div class="owl-carousel info-carousel">
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-4.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-2.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-1.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
              </div>
        </div>
        <div class="tab-pane fade" id="news" role="tabpanel" aria-labelledby="news-tab">
          <div class="owl-carousel info-carousel">
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-1.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-2.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-4.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता...</p>
                    </div>
                    </div>
                  </div>
              </div>
        </div>
        <div class="tab-pane fade" id="patra" role="tabpanel" aria-labelledby="patra-tab">
          <div class="owl-carousel info-carousel">
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-4.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-2.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-1.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> 2076 जेष्ठ 24  </div>
                      <a href="#">
                        <h6 class="card-title">काठमाण्डौ उपत्यकामा सार्वजनिक विदा सम्बन्धी सूचना</h6>
                      </a>
                      <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता ...</p>
                    </div>
                    </div>
                  </div>
              </div>
        </div>
      </div>
      </div>

      </div>

            <div class="col-lg-3 col-md-4">
              <div class="home_members">
                <div class="members text-center">
                  <div class="member_single">
                    <img src="images/KP_Sharma_Oli.png" alt="खड्ग प्रसाद शर्मा ओली'" class="img-fluid mx-auto">
                  <h6 class="text-center mt-3">
                    <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
      खड्ग प्रसाद शर्मा ओली </a>
                  </h6>
                  <p class="text-center">माननीय प्रधान मन्त्री </p>
                  </div>

                  <div class="member_multiple">
                  <div class="row">
                    <div class="col-md-6">
                      <img src="images/sachibmoha.jpg" alt="प्रेम कुमार राई'" class="img-fluid mx-auto">
                  <h6 class="text-center mt-3">
                    <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
      प्रेम कुमार राई </a>
                  </h6>
                  <p class="text-center">सह सचिव (प्रवक्ता) </p>
                    </div>
                    <div class="col-md-6">
                      <img src="images/ramkrishnasubedi.jpg" alt="रामकृष्ण सुवेदी" class="img-fluid mx-auto">
                  <h6 class="text-center mt-3">
                    <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
      रामकृष्ण सुवेदी </a>
                  </h6>
                  <p class="text-center">सह सचिव (प्रवक्ता)  </p>
                    </div>
                    <div class="clearfix"></div>
                  </div>

                  </div>

                  <div class="member_single">
                    <img src="images/upasachib.jpg" alt="उमाकान्त अधिकारी'" class="img-fluid mx-auto">
                    <h6 class="text-center mt-3">
                    <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
      उमाकान्त अधिकारी </a>
                    </h6>
                    <p class="text-center">उप सचिव </p>
                  </div>
                </div>
              </div>
      <div class="twitter-feeds">
          <a class="twitter-timeline" data-height="400" data-width="300"
             href="https://twitter.com/TechBikash">गृह मन्त्रालय</a>
          <script async src="https://platform.twitter.com/widgets.js"
                  charset="utf-8"></script>
      </div>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="clearfix"></div>
      <div class="white-box banner_sec">
            <div class="container">
            <div class="row">
              <div class="col-md-6 col-sm-6 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">
                <h2>12 Years Old</h2>
                <h3>Reputed</h3>
                <p>नेपाल  सरकारबाट २०५६ जेठ ९ गते राजपत्रमा सूचना प्रकाशित गरी आधारभूत तथा प्राथमिक शिक्षा परियोजना र माध्यमिक शिक्षा विकास परियोजनाद्वारा सञ्चालित  कार्यक्रमहरूलाई निरन्तरता क्षेत्रीय शिक्षा निर्देशनालय  एवम् जिल्ला शिक्षा कार्यालयहरूलाई सक्रिय बनाई विद्यालयको विद्यमान  शैक्षिक प्रणालीलाई अझ बढी प्रभावकारी बनाउन शिक्षा मन्त्रालयअन्तर्गत  शिक्षा विभागको गठन गरिएको हो ।</p>

                <a href="#" class="btn btn-info">Get Started</a>
              </div>
              <div class="col-md-6 col-sm-6 wow fadeInRight" data-wow-duration="1s" data-wow-delay=".3s">
                <figure><img src="images/a1.png" alt="banner image" class="img-fluid"/></figure>
              </div>
              <div class="clearfix"></div>
            </div>
            </div>
      </div>
      <div class="clearfix"></div>

      <div class="white-box sewa">
        <div class="container">
      <div class="card">
        <div class="card-header">
          <h4>शासन  सेवा </h4>
        </div>
        <div class="card-body">
          <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
              <h5><i class="fa fa-user">&nbsp;</i> स्वचालित कार्य </h5>
              <a href="#">स्वचालित कार्य प्रणालि हेर्न यहाँ  क्लिक गर्नुहोस्</a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".3s">
              <h5><i class="fa fa-user">&nbsp;</i> जन गुनासो  </h5>
              <a href="#">वेब  मेल  जन गुनासो हेर्न यहाँ  क्लिक गर्नुहोस्</a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".4s">
              <h5><i class="fa fa-user">&nbsp;</i> परिपत्र  प्रणाली  </h5>
              <a href="#">परिपत्र  प्रणाली  आन्तरिक सन्देशहरु पठाउन यहाँ  क्लिक गर्नुहोस्</a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
              <h5><i class="fa fa-user">&nbsp;</i> विधुतीय हाजिरी  </h5>
              <a href="#">विधुतीय हाजिरी प्रणाली नेपाल सरकार किन्द्र्य निकाय हेर्न यहाँ  क्लिक गर्नुहोस्</a>
            </div>

            <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
              <h5><i class="fa fa-user">&nbsp;</i> मोबाइल एप  </h5>
              <a href="#">मन्त्रालय संचालन मा भएको मोबाइल एप  हेर्न यहाँ  क्लिक गर्नुहोस्</a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".3s">
              <h5><i class="fa fa-user">&nbsp;</i> GIS नक्सा </h5>
              <a href="#">स्थानीय तह हरुको वेबसाइटको विवरण  हेर्न यहाँ  क्लिक गर्नुहोस्</a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".4s">
              <h5><i class="fa fa-user">&nbsp;</i> ICT ब्लग  </h5>
              <a href="#">ICT ब्लग  हेर्न यहाँ  क्लिक गर्नुहोस्</a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
              <h5><i class="fa fa-user">&nbsp;</i> वेबसाइट (स्थानीय तह)</h5>
              <a href="#">स्थानीय तह को वेबसाइटहरु  हेर्न यहाँ  क्लिक गर्नुहोस्</a>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
      </div>
      </div>

      <div class="gallery">
        <div class="container">
          <h4>ग्यालरी  एल्बम</h4>
      <div class="row">
        <div class="col-md-4">
            <div class="owl-carousel gallery-carousel">
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <a href="#">
                        <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                      </a>
                      <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <a href="#">
                        <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                      </a>
                      <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-4.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <a href="#">
                        <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                      </a>
                      <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                      <div class="item-inner card">
                        <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                      <div class="card-body">
                        <a href="#">
                          <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                        </a>
                        <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                      </div>
                      </div>
                    </div>
              </div>
        </div>
        <div class="col-md-4">
            <div class="owl-carousel gallery-carousel2">
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <a href="#">
                        <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                      </a>
                      <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <a href="#">
                        <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                      </a>
                      <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <a href="#">
                        <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                      </a>
                      <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                      <div class="item-inner card">
                        <figure><a href="#"><img src="images/service/service-4.jpg" class="img-fluid" alt="image"></a></figure>
                      <div class="card-body">
                        <a href="#">
                          <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                        </a>
                        <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                      </div>
                      </div>
                    </div>
              </div>
        </div>
        <div class="col-md-4">
            <div class="owl-carousel gallery-carousel3">
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-2.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <a href="#">
                        <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                      </a>
                      <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-3.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <a href="#">
                        <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                      </a>
                      <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="item-inner card">
                      <figure><a href="#"><img src="images/service/service-5.jpg" class="img-fluid" alt="image"></a></figure>
                    <div class="card-body">
                      <a href="#">
                        <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                      </a>
                      <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                    </div>
                    </div>
                  </div>
                  <div class="item">
                      <div class="item-inner card">
                        <figure><a href="#"><img src="images/service/service-6.jpg" class="img-fluid" alt="image"></a></figure>
                      <div class="card-body">
                        <a href="#">
                          <h6 class="card-title">फेरि चम्किन चाहेको एउटा पर्यटकीय गन्तव्य</h6>
                        </a>
                        <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p>
                      </div>
                      </div>
                    </div>
              </div>
        </div>
        <div class="clearfix"></div>
      </div>



        </div>
      </div>


        <div class="clearfix"></div>
      </div>




@endsection


