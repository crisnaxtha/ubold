@extends('dcms.layouts.app')
@section('css')


@include('dcms.includes.album-assets.css')




@endsection

@section('content')
<!-- page start-->
<div class="row">
    <div class="col-sm-12">
       <section class="panel">
          <header class="panel-heading">
             {{ $_panel }}
          </header>
          <div class="panel-body">
                @include('dcms.includes.buttons.button-back')
                @include('dcms.includes.buttons.button-create-gallery')
                @include('dcms.includes.buttons.button-edit-album')
                @include('dcms.includes.flash-message')
               <hr>
               <!--widget start-->
               <section class="panel">
                  <!--widget start-->
                  <aside class="profile-nav alt green-border">
                        <section class="panel">
                            <div class="user-heading alt green-bg">
                                <a href="#">
                                    @if(isset($row->cover_image))
                                    <img src="{{ asset($row->cover_image) }}" height="200" width="200" alt="img04">
                                    @else
                                    <img src="{{ asset('assets/dcms/img/gallery.png') }}"  alt="img04" height="200" width="200">
                                    @endif
                                </a>
                                <h1>{{ $albums_name->title }}</h1>
                                <p><strong>Status:</strong><?php dm_flag($row->status) ?></p>
                            </div>
                        </section>
                    </aside>
                    <!--widget end-->


                <ul class="grid cs-style-3">
                     @if(count($row->photos) !=0 )
                         @foreach($row->photos as $row)
                         <li>
                              <figure>
                                 <a class="fancybox" rel="group" href="{{ asset($row->image) }}">
                                    @if(isset($row->image))
                                    <img src="{{ asset($row->image) }}" height="500" width="500" alt="img04">
                                    @else
                                    <img src="{{ asset('assets/dcms/img/gallery.png') }}" alt="img04">
                                    @endif
                                 </a>
                                 <figcaption>
                                       <h3>{{ $row->title }}</h3>
                                       <div class="pull-right">
                                          @include('dcms.includes.buttons.button-delete-photo')
                                       </div>
                                    </figcaption>
                              </figure>
                         </li>
                         @endforeach
                     @else
                     <h1>No Photos Avilable</h1>
                     @endif

                   </ul>
          </div>
       </section>
    </div>
</div>
@endsection

@section('js')

@include('dcms.includes.album-assets.js')

<script type="text/javascript">
   $(function() {
     //    fancybox
       jQuery(".fancybox").fancybox();
   });

</script>
@endsection
