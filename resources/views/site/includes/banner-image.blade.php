@if(isset($all_view['banner']))
@foreach($all_view['banner'] as $row)
@if($row->type == Request::segment(1))
<div class="inner_banner" style="background: url({{ asset($row->image) }}); background-size: cover; background-attachment: fixed; width: 100%;"></div>
@else
<div class="inner_banner" style="background: url({{ asset('assets/site/assets/images/thumbnail.jpg')}}); background-size: cover; background-attachment: fixed; width: 100%;"></div>
@endif
@endforeach
@endif