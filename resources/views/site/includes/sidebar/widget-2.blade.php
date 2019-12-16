@if(isset($data['album']))
<div class="widget-box">
    <h3> <i class="fa fa-camera" aria-hidden="true">&nbsp;</i>Album</h3>
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
        <br>
        <a style="border:1px solid #e5e5e5;padding: 10px;" href="{{ route('site.album' )}}">सबै हेर्नुहोस  &nbsp;</a>
        </br>
    </div>
</div>
@endif
