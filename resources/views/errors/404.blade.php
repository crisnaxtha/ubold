@extends('site.layouts.app')

@section('content')

<div id="inner-banner">
        <div class="container">
          <div class="inner-banner-heading">
            <h1>404 Error</h1>
          </div>
        </div>
        <div class="breadcrumb-col"> <a href="{{ route('site.index') }}" class="btn-back"><i class="fa fa-home" aria-hidden="true"></i>Back to Home</a>
          <ol class="breadcrumb">
            <li><a href="{{ route('site.index') }}">Home</a></li>
            <li class="active">404 Error</li>
          </ol>
        </div>
      </div>
      <div id="main">
        
    <section class="error-section">
    <div class="container">
    <div class="holder">
    <h1>404</h1>
    <strong class="title">oops!</strong> <span>This is Not the Page you are Looking for.</span>
    <form action="#">
    <input required type="text" placeholder="Enter your keywords again ">
    <button type="submit" value=""><i class="fa fa-search" aria-hidden="true"></i></button>
    </form>
    <div class="btn-row"><a href="{{ route('site.index') }}" class="btn-back">Back to Home</a></div>
    </div>
    </div>
    </section>
        
      </div>

@endsection 