{{-- <ul class="nav navbar-nav" id="nav">
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
</ul> --}}

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary nav_sec">
    <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav mr-auto" id="nav">
                    @if(isset($data['menu']))
                        @foreach($data['menu'] as $row)
                            @if($loop->iteration <= 8)
                            <li class="nav-item @if(array_key_exists('child', $row)) dropdown @endif "><a class="nav-link @if(array_key_exists('child', $row)) dropdown @endif" @if(array_key_exists('child', $row)) id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" @endif href="{{ url($row['url']) }}" target="{{ $row['target'] }}">{{ $row['menu_name'] }} @if(array_key_exists('child', $row))<i class="fa fa-angle-down"></i>@endif</a>
                                <ul>
                                @if(array_key_exists('child', $row))
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                @foreach($row['child'] as $child)
                                <li class="">
                                    <a class="dropdown-item" href="{{ url($child['url']) }}" target="{{ $child['target'] }}"  href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ $child['menu_name'] }}</a>
                                </li>
                                @endforeach
                                </ul>
                                @endif
                                </ul>
                            </li>
                            @endif
                        @endforeach
                    @endif


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
                    @if(isset($data['menu']))
                    @foreach($data['menu'] as $row)
                        @if($loop->iteration >= 8)
                        <li ><a href="{{ url($row['url']) }}" target="{{ $row['target'] }}">{{ $row['menu_name'] }} @if(array_key_exists('child', $row))@endif</a>

                        </li>
                        @endif
                    @endforeach
                @endif
                </ul>
            </div>
        <div class="clearfix"></div>
        </div>
    </div>
</div>
  <!-- /Navigation -->
