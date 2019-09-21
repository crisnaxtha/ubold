@extends('site.layouts.app')

@section('content')

<div class="mid_part inner_page">
        <div class="inner_banner" style="background:url({{ asset('assets/site/assets/images/sheetal.jpg')}});background-size: cover; background-attachment: fixed; width: 100%;"></div>

        <div class="breadcrumb-col">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="{{ route('site.index')  }}"><i class="fa fa-home"></i></a></li>
                    <li class="active">All Photos</li>
                </ol>
            </div>
            <!-- <div class="btm_style"><svg viewBox="0 0 1440 120" width="100%" height="100%" fill="#fff"><path d="M1440,21.2101911 L1440,120 L0,120 L0,21.2101911 C120,35.0700637 240,42 360,42 C480,42 600,35.0700637 720,21.2101911 C808.32779,12.416393 874.573633,6.87702029 918.737528,4.59207306 C972.491685,1.8109458 1026.24584,0.420382166 1080,0.420382166 C1200,0.420382166 1320,7.35031847 1440,21.2101911 Z"></path></svg></div> -->
        </div>

        <section class="dtl_sec">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <h4>&nbsp; <i class="fa fa-photo">&nbsp;</i> All Photos</h4>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>

                            <div class="card-body" id="gallery">

                                <div id="image-gallery">
                                    <div class="row">
                                        @if(count($data['album']->photos)  != 0)
                                        @foreach($data['album']->photos as $row)
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 image">
                                            <div class="img-wrapper">
                                                <a href="{{ asset($row->image) }}"><img src="{{ asset($row->image) }}" alt="{{ $row->title }}" /></a>
                                                <div class="img-overlay">
                                                    <a href="javascript:void(0)"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                        @endif
                                    </div>
                                    <!-- End row -->
                                </div>
                                <!-- End image gallery -->
                            </div>

                        </div>

                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </section>

        <div class="clearfix"></div>
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
