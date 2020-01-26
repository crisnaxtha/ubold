@extends('site.layouts.app')

@section('content')

<div class="mid_part inner_page">
    @include('site.includes.banner-image')

    <div class="breadcrumb-col">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="fa fa-home"></i></a></li>
                @if(isset($data['cat']->name))
                <li class="">{{$data['cat']->name}}</li>
                @endif
            </ol>
        </div>
    </div>
    <section class="dtl_sec">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-lg-9 col-md-9">
                                    View By:
                                    <a id="gridlink" href="#"><i class="fa fa-th-large" ></i></a> |
                                    <a id="listlink" href="#"><i class="fa fa-list-ul" ></i></a>
                                </div>
                                <div class="col-lg-3 col-md-3">
                                    <div class="share-box">
                                        {{-- <ul>
                                            <li><a href="javascript:void(0)" class="social-color-1"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="javascript:void(0)" class="social-color-2"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="javascript:void(0)" class="social-color-3"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                            <li><a href="javascript:void(0)" class="social-color-4"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                        </ul> --}}
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                @if(isset($data['rows']))
                                    @foreach($data['rows'] as $row)
                                <div class="col-md-4">
                                    <div id="divgrid">
                                        <div class="item">
                                            <div class="item-inner card">
                                                @if(Route::has('site.post.show'))
                                                <figure>
                                                    <a href="{{ route('site.post.show', ['id' => $row->unique_id] )}}">
                                                        @if(isset($row->thumbnail))
                                                        <img src="{{$row->thumbnail}}" class="img-fluid" alt="image">
                                                        @else
                                                        <img src="{{ asset('assets/site/assets/images/thumbnail.jpg')}}" class="img-fluid" alt="image">
                                                        @endif
                                                    </a>
                                                </figure>
                                                @endif
                                                <div class="card-body">
                                                    <div class="card-meta"><i class="fa fa-clock-o">&nbsp;</i> {{ $row->created_at }}&nbsp; <i class="fa fa-user"> </i>&nbsp;&nbsp;<i class="fa fa-eye">&nbsp; </i>{{ $row->visit_no}} </div>
                                                    @if(isset($row->title))
                                                    @if(Route::has('site.post.show'))
                                                    <a href="{{ route('site.post.show', ['id' => $row->unique_id] )}}">
                                                        <h6 class="card-title">{{ $row->title }}</h6>
                                                    </a>
                                                    @endif
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    @endforeach
                                @endif
                            </div>
                            <div class="pagination">
                               {{-- {{ $data['rows']->links() }} --}}
                            </div>
                            <div id="divlist" style="display:none">
                                @if(isset($data['rows']))
                                    @foreach($data['rows'] as $row)
                                <div class="row">
                                    <div class="col-md-4">
                                        <a href="{{ route('site.post.show', ['id' => $row->unique_id] )}}">
                                            @if(isset($row->thumbnail))
                                            <img src="{{$row->thumbnail}}" class="img-fluid" alt="image">
                                            @else
                                            <img src="{{ asset('assets/site/assets/images/thumbnail.jpg')}}" class="img-fluid" alt="image">
                                            @endif
                                        </a>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            @if(isset($row->title))
                                            @if(Route::has('site.post.show'))
                                            <a href="{{ route('site.post.show', ['id' => $row->unique_id] )}}">
                                                <h6 class="card-title"><b>{{ $row->title }}</b></h6>
                                            </a>
                                            @endif
                                            @endif
                                            <p>{!! $row->content !!}</p>
                                            <div class="row">
                                                <div class="col-md-9">
                                                    <i class="fa fa-clock-o">&nbsp;</i> {{ $row->created_at }}&nbsp; <i class="fa fa-user"> </i>&nbsp;&nbsp;<i class="fa fa-eye">&nbsp; </i>{{ $row->visit_no }}
                                                </div>
                                                <div class="col-md-3">
                                                    <a style="border:1px solid #e5e5e5;padding: 10px;" href="{{ route('site.post.show', ['id' => $row->unique_id] )}}">सबै हेर्नुहोस  &nbsp;</a>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                    @endforeach
                                    @endif
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                {{-- <div class="col-lg-3 col-md-3 page_sidebar"> --}}
                    {{-- @include('site.includes.sidebar.widget-1')
                    @include('site.includes.sidebar.widget-2')
                    @include('site.includes.sidebar.widget-3')
                    @include('site.includes.sidebar.widget-4')
                    @include('site.includes.sidebar.widget-5') --}}

                {{-- </div> --}}
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
</div>
@endsection


@section('js')
<script>
    $(document).ready(function(){
        $("#gridlink").click(function() {
            $("#divlist").hide();
            $("#divgrid").show();
            $("#divgrid1").show();
            $("#divgrid2").show();
            $("#divgrid3").show();
            $("#divgrid4").show();
            $("#divgrid5").show();
            $("#divgrid6").show();
            $("#divgrid7").show();
            $("#divgrid8").show();
        });
        $("#listlink").click(function() {
            $("#divlist").show();
            $("#divgrid").hide();
            $("#divgrid1").hide();
            $("#divgrid2").hide();
            $("#divgrid3").hide();
            $("#divgrid4").hide();
            $("#divgrid5").hide();
            $("#divgrid6").hide();
            $("#divgrid7").hide();
            $("#divgrid8").hide();
        });
    })
</script>

@endsection
