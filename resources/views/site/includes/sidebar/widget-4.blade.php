@if(isset($data['imp_link']))
@if(count($data['imp_link']))
<div class="widget-box">
    <h3> <i class="fa fa-link" aria-hidden="true">&nbsp;</i> महत्त्वपूर्ण लिङ्कहरू</h3>
    <ul class="useful-link">
        @foreach($data['imp_link'] as $row)
        <li>
            <a href="{{ $row->url }}" class=""><i class="fa {{ $row->icon }}"></i>{{ $row->name }}</a>
        </li>
        @endforeach
    </ul>
</div>
@endif
@endif
