@extends('site.layouts.app')

@section('content')

<div class="mid_part">
	<div class="container">
		<div class="row">
		    <div class="col-lg-9 col-md-8">
                @include('site.includes.index-stat')
                @include('site.includes.index-chart')
                @include('site.includes.index-imp-link')
                @include('site.includes.index-tab')
                @include('site.includes.index-video')
            </div>
            <div class="col-lg-3 col-md-4">
                @include('site.includes.index-member')
                @include('site.includes.index-tweet')
                @include('site.includes.index-about')
                @include('site.includes.index-sewa')
                @include('site.includes.index-gallery')

            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>

@endsection

@section('js')
<script type="text/javascript">
    $(document).ready(function() {
      new WOW().init();
    })
</script>
<script>
    $(document).ready(function(){
      $('.moremenu').click(function(event){

        if ( $(this).hasClass('active') ) {
          $(this).removeClass('active');
      } else {
          $('.moremenu.active').removeClass('active');
          $(this).addClass('active');
      }

          event.stopPropagation();
           $(".megamenu").slideToggle("slow");
      });
      $(".megamenu").on("click", function (event) {
          event.stopPropagation();
      });
  });

  $(document).on("click", function () {
      $(".megamenu").hide();
      $(".moremenu").removeClass('active');
  });
</script>
@endsection


