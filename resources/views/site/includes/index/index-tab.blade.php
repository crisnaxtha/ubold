<div class="tab_sec">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        @if(isset($data['category']))
        @foreach($data['category'] as $row)
        <li class="nav-item">
            <a class="nav-link @if($loop->iteration == 1) active @endif" id="{{ $row->slug }}-tab" data-toggle="tab" href="#{{ $row->slug }}" role="tab" aria-controls="{{ $row->slug }}" aria-selected="@if($loop->iteration ==1 )true @else false @endif">
                <i class="fa {{ $row->icon }}">&nbsp;</i> {{ $row->cat_name }}
            </a>
        </li>
        @endforeach
        @endif
    </ul>
    <div class="tab-content card white-box" id="myTabContent">
@if(isset($data['category']))
@foreach($data['category'] as $row)
            <div class="tab-pane fade @if($loop->iteration == 1) show active @endif" id="{{ $row->slug }}" role="tabpanel" aria-labelledby="{{ $row->slug }}-tab">
                <div class="owl-carousel info-carousel">
@if(isset($data['cat_post_'.$row->slug]))
@foreach($data['cat_post_'.$row->slug] as $p_row)
                    <div class="item">
                        <div class="item-inner card">
                            <figure>
                                @if(route::has('site.post.show'))
                                <a href="{{ route('site.post.show', ['id'=> $p_row->unique_id]) }}">
                                    @if(isset($p_row->thumbnail))
                                    <img src="{{$p_row->thumbnail}}" class="img-fluid" alt="image">
                                    @else
                                    <img src="{{asset('assets/site/assets/images/thumbnail.jpg')}}" class="img-fluid" alt="image">
                                    @endif
                                </a>
                                @endif
                            </figure>
                            <div class="card-body">
                                <div class="card-meta">
                                    <i class="fa fa-clock-o">&nbsp;</i>{{ $p_row->created_at }}
                                </div>
                                @if(route::has('site.post.show'))
                                <a href="{{ route('site.post.show', ['id'=> $p_row->unique_id]) }}">
                                    <h6 class="card-title">{{ $p_row->title }}</h6>
                                </a>
                                @endif
                                {!! mb_strimwidth($p_row->content, 0, 100, "...") !!}
                            </div>
                        </div>
                    </div>
                    <div class="view-all">
                        <a  href="{{ route('site.category.show', ['id'=> $row->id]) }}">{{__('View All')}} &nbsp;</a>
                    </div>
@endforeach
@endif
            </div>
        </div>
@endforeach
@endif
    </div>
</div>
