@extends('dcms.layouts.app')
@section('css')
<link href="{{asset('assets/dcms/assets/dropzone/css/dropzone.css')}}" rel="stylesheet"/>
@endsection
@section('content')
@include('dcms.includes.breadcrumb')

<div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12">
            <section class="card">
                <header class="header-title">
                        <h3>Add Photo to {{ $_panel }}</h3>
                        @include('dcms.includes.buttons.button-back')
                </header>
                <div class="card-body">
                        @include('dcms.includes.flash-message')

                        <form action="{{ route('dcms.album.storePhoto', ['id' => $album_id]) }}" class="dropzone" id="my-awesome-dropzone" method="POST" enctype="multipart/form-data">@csrf</form>
                </div>
            </section>
        </div>
    </div>
    <?php


    ?>

@endsection

@section('js')
<script src="{{ asset('assets/dcms/assets/dropzone/dropzone.js') }}"></script>
@endsection
