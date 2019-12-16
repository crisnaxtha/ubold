@if(isset($data['category_first']))
<div class="widget-box">
    <h3> <i class="fa fa-newspaper-o">&nbsp;</i>{{ $data['category_first']->name }}</h3>
    <div class="side-widget">
        <div class="owl-carousel info-carousel3">
            @if(count($data['category_first_post']))
            @foreach($data['category_first_post'] as $row)
            @if($loop->iteration == 1 || $loop->iteration % 4 == 0 )
            <div class="item">
                <ul>
            @endif
                <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                    <div class="thumb">
                        @if(Route::has('site.post.show'))
                        <a href="{{ route('site.post.show', ['id' => $row->unique_id])}}"><img src="{{ $row->thumbnail }}" alt="img"></a>
                        @endif
                    </div>
                    <div class="text-area">
                        @if(Route::has('site.post.show'))
                        <a href="{{ route('site.post.show', ['id' => $row->unique_id])}}">{{ $row->title }}</a>
                        @endif
                    </div>
                    <div class="author_sec">
                        <span><i class="fa fa-eye" aria-hidden="true"></i> <em>{{ $row->visit_no}}</em></span>
                        {{-- <span><i class="fa fa-user" aria-hidden="true"></i> <em>Admin</em></span> --}}
                        <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>{{ $row->created_at }}</em></span>
                    </div>
                </li>
            @if( $loop->iteration % 3 == 0 )
                </ul>
            </div>
            @endif
            @endforeach
            @endif
        </div>

    </div>
</div>
@endif
