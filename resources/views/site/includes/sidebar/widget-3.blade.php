@if(isset($data['category']))
@if(count($data['category']))
<div class="widget-box">
    <h3><i class="fa fa-external-link-square">&nbsp;</i> Category List
                    <a href="#">View All</a> </h3>
    <div class="archive-widget">
        <ul>
            @foreach($data['category'] as $row)
            <li>
                @if(Route::has('site.category.show'))
                <a href="{{ route('site.category.show', ['id' => $row->id]) }}">
                    <span>
                        <i class="fa fa-bookmark" aria-hidden="true"></i>
                    </span>{{ $row->name }}
                </a>
                @endif
            </li>
            @endforeach
        </ul>
    </div>
</div>
@endif
@endif
