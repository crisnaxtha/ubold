@if(isset($data['banner']->image))
<div class="inner_banner" style="background: url({{ asset($data['banner']->image) }}); background-size: cover; background-attachment: fixed; width: 100%;"></div>
@else
<div class="inner_banner" style="background: url({{ asset('assets/site/assets/images/thumbnail.jpg')}}); background-size: cover; background-attachment: fixed; width: 100%;"></div>
@endif
