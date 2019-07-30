@if(isset($data['about_us']))
<div class="white-box banner_sec">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">
                <h2>{{ $data['about_us']->title  }}</h2>
                {{--<h3>Reputed</h3> --}}
{!! mb_strimwidth($data['about_us']->content, 0, 1100, "...") !!}
@if(route::has('site.page.show'))

                <a href="{{ route('site.page.show', ['id' => $data['about_us']->post_unique_id]) }}" class="btn btn-info">{{__('View more')}}</a>
@endif

            </div>
            <div class="col-md-6 col-sm-6 wow fadeInRight" data-wow-duration="1s" data-wow-delay=".3s">
                <figure>
                    <img src="{{ $data['about_us']->thumbnail }}" alt="banner image" class="img-fluid"/>
                </figure>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
@endif
