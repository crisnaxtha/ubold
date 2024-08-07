@extends('site.layouts.app')

@section('content')

<div class="mid_part">
	<div class="container">
		<div class="row">
		    <div class="col-lg-9 col-md-8">
                @include('site.includes.index.stat')
                @include('site.includes.index.chart')
                @include('site.includes.index.imp-link')
                @include('site.includes.index.video')
                @include('site.includes.index.tab')
            </div>
            <div class="col-lg-3 col-md-4">
                {{-- @include('site.includes.index.member') --}}
                @include('site.includes.sidebar.widget-1')
                @include('site.includes.index.tweet')
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    @include('site.includes.index.about')
    @include('site.includes.index.sewa')
    @include('site.includes.index.gallery')
</div>
@include('site.includes.index.popup')

@endsection

@section('js')
<script type="text/javascript">
    $(document).ready(function() {
      new WOW().init();
    })
</script>
<script>
 $(document).ready(function(){
   $('#myModal2').modal('show');
    });

</script>


@include('site.includes.index.chart-js-script')
@endsection


