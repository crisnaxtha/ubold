@if(count($data['menu']) != 0)
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary nav_sec">
    <div class="container">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav mr-auto" id="nav">
                @foreach($data['menu'] as $row)
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
                @endforeach
            </ul>
      </div>
    </div>
</nav>
@endif
  <!-- /Navigation -->
</div>
