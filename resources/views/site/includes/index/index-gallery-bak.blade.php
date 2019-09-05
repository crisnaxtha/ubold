@if(count($data['album']) != 0)
<div class="gallery">
    <div class="container">
        <h4>{{ __('Gallery')}}</h4>
        <div class="row">
@foreach($data['album'] as $row)
            <div class="col-md-4">
                <div class="item">
                    <div class="item-inner card">
                        <figure>
@if(Route::has('site.album.show'))
                            <a href="{{ route('site.album.show', ['id'=> $row->id ]) }}">
                                <img src="{{ $row->cover_image }}" class="img-fluid" alt="{{ $row->title }}">
                            </a>
                        </figure>
                        <div class="card-body">
                            <a href="{{ route('site.album.show', ['id'=> $row->id ]) }}">
                                <h6 class="card-title">{{ $row->title }}</h6>
                            </a>
@endif
                            {{-- <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p> --}}
                        </div>
                    </div>
                </div>
            </div>
@endforeach
        </div>
    </div>
</div>
@endif
<div class="clearfix"></div>
