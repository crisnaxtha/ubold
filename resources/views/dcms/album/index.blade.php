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
                @include('dcms.includes.buttons.button-create')
                @include('dcms.includes.flash-message')

                  <ul class="grid cs-style-3">
                    @if(isset($data['rows']))
                        @foreach($data['rows'] as $row)
                        <li>
                            @if(route::has('dcms.album.show') && isset($row->id))
                                <figure>
                                    <a href="{{ route('dcms.album.show', ['id' => $row->id ]) }}">
                                    @if(isset($row->cover_image))
                                    <img src="{{ asset($row->cover_image) }}" alt="img04">
                                    @else
                                    <img src="{{ asset('assets/dcms/img/gallery.png') }}" alt="img04">
                                    @endif
                                    </a>
                                    <figcaption>

                                        <h3>{{ $row->title }}</h3>
                                        <span>{{ $row->description }} </span>
                                        <span><?php dm_flag($row->status) ?></span>
                                        <div class="float-right">
                                            @include('dcms.includes.buttons.button-delete')
                                        </div>
                                    </figcaption>
                                </figure>
                            @endif
                        </li>
                        @endforeach
                    @else
                    <h1>No album Avilable</h1>
                    @endif

                  </ul>
          </div>
       </section>
    </div>
</div>
@endsection

@section('js')

@include('dcms.includes.album-assets.js')


@endsection
