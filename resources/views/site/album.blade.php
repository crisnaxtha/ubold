@extends('site.layouts.app')

@section('content')
<div class="mid_part inner_page">
    <div class="inner_banner" style="background: url(assets/site/assets/images/sheetal.jpg); background-size: cover; background-attachment: fixed; width: 100%;"></div>

    <div class="breadcrumb-col">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="{{ route('site.index')  }}"><i class="fa fa-home"></i></a></li>
                <li class="active">{{ ucwords(str_replace('-',' ',Request::segment(1)))}}</li>
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
                                    <h4>&nbsp; <i class="fa fa-photo">&nbsp;</i>Album</h4>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
@if(count($data['album']) != 0)
                        <div class="gallery_list ">
                            <div class="row">
                                @foreach($data['album'] as $row)
                                @if(Route::has('site.album.show'))
                                <div class="col-md-4 col-sm-6">
                                    <div class="item-inner card">
                                        <figure>
                                            <a href="{{ route('site.album.show', ['id'=> $row->id ]) }}">
                                                @if(isset($row->cover_image))
                                                <img src="{{asset($row->cover_image)}}" class="img-fluid" alt="{{ $row->title }}">
                                                @else
                                                <img src="{{ asset('assets/site/assets/images/gallery.png')}}" class="img-fluid" alt="{{ $row->title }}">
                                                @endif
                                            </a>
                                            <a href="{{ route('site.album.show', ['id'=> $row->id ]) }}" class="btn btn-sm btn-danger catagory_link">Business</a>
                                        </figure>
                                        <div class="card-body">
                                            <a href="{{ route('site.album.show', ['id'=> $row->id ]) }}">
                                                <h6 class="card-title">{{ $row->title }}</h6>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                @endif
                                @endforeach
                                <div class="clearfix"></div>
                            </div>
                        </div>
@endif
                    </div>

                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </section>

    <div class="clearfix"></div>
</div>
@endsection
