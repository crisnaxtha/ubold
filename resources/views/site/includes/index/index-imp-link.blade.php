@if(isset($data['imp_link']))
<div class="main-link card">
    <div class="card-header">
        <h4>{{ __('Important Links') }}</h4>
    </div>
    <div class="card-body">
        <ul class="useful-link">
@foreach($data['imp_link'] as $row)
            <li>
                <a href="{{ $row->url }}" class=""><i class="fa {{ $row->icon }}"></i>&nbsp;{{ $row->name }}</a>
            </li>
@endforeach
        </ul>
        <div class="clearfix"></div>
    </div>
</div>
@endif
