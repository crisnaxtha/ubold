@extends('site.layouts.app')

@section('content')

<div id="inner-banner">
    <div class="container">
      <div class="inner-banner-heading">
            @if(isset($data['cat']->name))
            <h1>{{ $data['cat']->name }}</h1>
            @endif
      </div>
    </div>
    <div class="breadcrumb-col"> <a href="{{ route('site.index') }}" class="btn-back"><i class="fa fa-home" aria-hidden="true"></i>Back to Home</a>
      <ol class="breadcrumb">
        <li><a href="{{ route('site.index') }}">Home</a></li>
        @if(isset($data['cat']->name))
        <li class="active">{{ $data['cat']->name }}</li>
        @endif
      </ol>
    </div>
  </div>
  <div id="main">
    <section class="blog-page news-section news-detail">
      <div class="container">
        <div class="row">
          <div class="col-md-9 col-sm-8">
            <div class="post-box">
              <div class="box">
                <div class="text-box">
                    @if(isset($data['rows']))
                    @foreach($data['rows'] as $row)
                  <div class="tp-row">
                    @if(isset($row->title))
                        <h3><a href="{{ route('site.post.show', ['id' => $row->post_unique_id] )}}">{{ $row->title }}</a></h3>
                    @endif
                    <div class="btm-row">
                      <ul>
                        <li><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Author: <span>Admin</span></li>
                        @if(isset($row->created_at))
                        <li><i class="fa fa-clock-o" aria-hidden="true"></i> Time: <span> {{ $row->created_at }} </span> </li>
                        @endif
                        <li><i class="fa fa-eye" aria-hidden="true"></i> Page Visit: <span>{{ $row->visit_no }}</span></li>
                      </ul>
                    </div>
                  </div>
                  @endforeach
                  @else
                  <h1>No Post Available</h1>
                  @endif
                </div>
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