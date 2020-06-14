@if(isset($data['video']))
    <div class="vdo_sec">
        <div class="my-ttl">
            {{ __('Company')}} {{__('Related')}} {{__("Videos") }}
        </div>
        <div class="owl-carousel vdo-carousel">
            @foreach($data['video'] as $row)
            <div class="item" id="video-item">
                {!! $row->link !!}
            </div>
            @endforeach
        </div>
        <div class="clearfix"></div>
    </div>
@endif
