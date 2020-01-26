@extends('dcms.layouts.app')
@section('css')

@include('dcms.includes.album-assets.css')


@endsection

@section('content')
<!-- page start-->
@include('dcms.includes.breadcrumb')
<div class="row">
    <div class="col-sm-12">
       <section class="card">
          <div class="card-body">
                @include('dcms.api.includes.nav')
                @include('dcms.includes.flash-message')
          </div>
       </section>
    </div>
</div>
@endsection

@section('js')

@include('dcms.includes.album-assets.js')


@endsection
