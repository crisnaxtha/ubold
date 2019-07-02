<ul class="nav navbar-nav" id="nav">
    @if(isset($data['menu']))
        @foreach($data['menu'] as $row)
            <li><a href="{{ url($row['url']) }}" target="{{ $row['target'] }}">{{ $row['menu_name'] }} @if(array_key_exists('child', $row))<i class="fa fa-angle-down"></i>@endif</a>
                <ul>
                @if(array_key_exists('child', $row))
                @foreach($row['child'] as $child)
                <li><a href="{{ url($child['url']) }}" target="{{ $child['target'] }}">{{ $child['menu_name'] }}</a></li>
                @endforeach
                @endif
                </ul>
            </li>
        @endforeach
    @endif
</ul>

 <!-- Navigation -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-primary nav_sec">
        <div class="container">
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item"> <a class="nav-link" href="index.html">गृह पृष्ठ</a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">हाम्रो बारेमा</a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">संगठनिक संरचना</a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">खेलकुद</a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">शिक्षा</a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">नागरिक</a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">व्यवसाय </a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">पर्यटन </a> </li>
              <li class="nav-item dropdown menu-large"> <a class="nav-link dropdown-toggle moremenu" href="javascript:void(0)" id="navLarge" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> More </a>

              </li>
            </ul>
          </div>
        </div>
      </nav>
          <div class="megamenu" aria-labelledby="navLarge">
            <div class="container">
                  <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-4">
                      <h4>More</h4>
                    </div>
                    <div class="col-lg-10 col-md-9 col-sm-8">
                      <ul>
                        <li><a href="#">Culture</a></li>
                        <li><a href="#">Future</a></li>
                        <li><a href="#">Sounds</a></li>
                        <li><a href="#">CBBC</a></li>
                        <li><a href="#">CBeebies</a></li>
                        <li><a href="#">Food</a></li>
                        <li><a href="#">Bitesize</a></li>
                        <li><a href="#">Arts</a></li>
                        <li><a href="#">Taster</a></li>
                        <li><a href="#">Nature</a></li>
                        <li><a href="#">Local</a></li>
                        <li><a href="#">TV</a></li>
                        <li><a href="#">Radio</a></li>
                        <li><a href="#">Three</a></li>
                        <li><a href="#">Four</a></li>
                      </ul>
                    </div>
                    <div class="clearfix"></div>
                  </div>
                </div>
              </div>
      <!-- /Navigation -->
