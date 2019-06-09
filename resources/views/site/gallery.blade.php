@extends('site.layouts.app')

@section('content')
 
<div id="inner-banner">
	<div class="container">
		<div class="inner-banner-heading">
			<h1>Gallery</h1>
		</div>
	</div>
	<div class="breadcrumb-col">
		<a href="javascript:void(0)" class="btn-back">
			<i class="fa fa-home" aria-hidden="true"></i>Back to Home
		</a>
		<ol class="breadcrumb">
			<li>
				<a href="javascript:void(0)">Home</a>
			</li>
			<li class="active">Gallery</li>
		</ol>
	</div>
</div>
<div id="main">
	<section class="team-section">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-sm-8">
					<div class="city-law">
						<div class="heading-style-1">
                                <h2>All <span> Photo</span></h2>
						</div>
						<div class="row">
                            @if(count($data['album']->photos)  != 0)
                            @foreach($data['album']->photos as $row)
							<div class="col-md-4">		
                                    @if(isset($row->image))
									<div class="gallery_box">
                                        <a class="fancybox-buttons" data-fancybox-group="button" href="{{ asset($row->image) }}"><img src="{{ asset($row->image) }}" height="275" width="261" alt="Photo" /></a> 
                                    </div>
                                    @else

                                    @endif
                            </div>
                            @endforeach
                            @endif

                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                @include('site.includes.sidebar')
                </div>
            </div>
        </div>
    </section>
</div>


@endsection 

@section('js')
<!-- For gallery -->

<script type="text/javascript" src="{{asset('assets/site/source/jquery.fancybox.js?v=2.1.5')}}" ></script>
<link rel="stylesheet" type="text/css" href="{{asset('assets/site/source/jquery.fancybox.css?v=2.1.5')}}" media="all">
<script type="text/javascript">
		$(document).ready(function() {

			/*
			 *  Button helper. Disable animations, hide close button, change title type and content
			 */

			$('.fancybox-buttons').fancybox({
				openEffect  : 'none',
				closeEffect : 'none',

				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,

				helpers : {
					title : {
						type : 'inside'
					},
					buttons	: {}
				},

				afterLoad : function() {
					this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
				}
			});

		});
	</script>

@endsection 