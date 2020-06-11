@if(isset($data['album']))
<div class="widget-box">
    <h3> <i class="fa fa-camera" aria-hidden="true">&nbsp;</i>{{__('Album')}}
        @if(Route::has('site.album'))
        <a href="{{ route('site.album' )}}">{{__('View All')}}</a>
        @endif
    </h3>
    <div class="side-widget">
        <div class="row">
            @foreach($data['album'] as $row)
            <div class="col-md-4">
                @if(isset($row->cover_image))
                <img src="{{ asset($row->cover_image) }}">
                @else
                <img src="{{ asset('assets/site/assets/images/gallery.png')}}">
                @endif
            </div>
           @endforeach
        </div>
    </div>
</div>
@endif
