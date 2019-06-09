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