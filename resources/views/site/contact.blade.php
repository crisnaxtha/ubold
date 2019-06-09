@extends('site.layouts.app')

@section('content')
<div id="inner-banner">
	<div class="container">
		<div class="inner-banner-heading">
			<h1>Contact US</h1>
		</div>
	</div>
	<div class="breadcrumb-col">
		<a href="{{ route('site.index') }}" class="btn-back">
			<i class="fa fa-home" aria-hidden="true"></i>Back to Home
		</a>
		<ol class="breadcrumb">
			<li>
				<a href="{{ route('site.index') }}">Home</a>
			</li>
			<li class="active">Contact us</li>
		</ol>
	</div>
</div>
<div id="main">
	<section class="contact-style-1">
		<div class="address">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<div class="box">
							<i class="fa fa-map-marker address-color-1" aria-hidden="true"></i>
							<h3>Address</h3>
							@if( isset($all_view['setting']->contact_title) )
								<p>{{ $all_view['setting']->contact_title }}</p>
							@endif
							@if( isset($all_view['setting']->contact_address_1) )
								<p>{{ $all_view['setting']->contact_address_1 }}</p>
							@endif
							@if( isset($all_view['setting']->contact_address_2) )
								<p>{{ $all_view['setting']->contact_address_2 }}</p>
							@endif
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="box">
							<i class="fa fa-phone address-color-2" aria-hidden="true"></i>
							<h3>Phone</h3>
							@if( isset($all_view['setting']->contact_phone) )
								<p>{{ $all_view['setting']->contact_phone }}</p>
							@endif
							@if( isset($all_view['setting']->contact_fax) )
								<p>{{ $all_view['setting']->contact_fax }}</p>
							@endif
							@if( isset($all_view['setting']->contact_mobile) )
								<p>{{ $all_view['setting']->contact_mobile }}</p>
							@endif
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="box">
							<i class="fa fa-envelope address-color-3" aria-hidden="true"></i>
							<h3>Email Us</h3>
							<a href="mailto:">
								@if( isset($all_view['setting']->contact_email) )
									<p>{{ $all_view['setting']->contact_email }}</p>
								@endif
							</a>
							
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="box">
							<i class="fa fa-clock-o address-color-4" aria-hidden="true"></i>
							<h3>Hours</h3>
							<p>Monday To Friday</p>
							<p>10:00am To 05:00pm</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="map-form-section">
			<div class="container">
				<div class="col-md-6 col-sm-6">
					<div class="map-box-1">
						<div id="map_contact_1" class="map_canvas active">
							{{-- <iframe width="100%" height="696" id="gmap_canvas" src="https://maps.google.com/maps?q=department%20of%20foreign%20employment%20(DoEF)&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe> --}}
							@if( isset($all_view['setting']->contact_map) )
								{!! $all_view['setting']->contact_map !!}
							@endif
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="contact-form">
						<div class="heading-style-1">
							<h2>Get in 
								<span>Touch</span>
							</h2>
						</div>
                        <form action="{{ route('site.message') }}" method="POST" enctype="multipart/form-data">
                            @csrf
							<div class="row">
								<div class="col-md-12">
									<input type="text" placeholder="Name" name="name" required>
									</div>
									<div class="col-md-12">
										<input type="text" placeholder="Email" name="email" required>
										</div>
										<div class="col-md-12">
											<input type="text" placeholder="Contact" name="number" >
											</div>
											<div class="col-md-12">
												<textarea cols="10" rows="10" placeholder="Message" name="message" required></textarea>
											</div>
											<div class="col-md-12">
												<input type="submit" value="Contact Now">
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>

@endsection