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
							<h2>Photo 
								<span> Album</span>
							</h2>
						</div>
						<div class="row">
                            @if(isset($data['album']))
                            @foreach($data['album'] as $row)
							<div class="col-md-4">
								<div class="box">
                                    @if(isset($row->cover_image))
									<a href="{{ route('site.album.show', ['id'=> $row->id ]) }}">
										<img src="{{asset($row->cover_image)}}" height="275" width="261" alt="img">
                                    </a>
                                    @else

                                    @endif
                                    <div class="caption">
                                        <h4>
                                            <a href="#">{{ $row->title }}</a>
                                        </h4>
                                        <span>{{ date('Y-M-d', strtotime($row->created_at)) }}</span>
                                    </div>
								</div>
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