@extends('site.layouts.app') @section('content')

<div id="inner-banner">
    <div class="container">
        <div class="inner-banner-heading">
            <h1>Staff</h1>
        </div>
    </div>
    <div class="breadcrumb-col"> <a href="javascript:void(0)" class="btn-back"><i class="fa fa-home" aria-hidden="true"></i>Back to Home</a>
        <ol class="breadcrumb">
            <li><a href="javascript:void(0)">Home</a></li>
            <li class="active">Staff</li>
        </ol>
    </div>
</div>
<div id="main">
    <section class="faq">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-sm-8">
                    @if($data['branch'])
                    @foreach($data['branch'] as $row)
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <div class="title" data-role="title" data-toggle="collapse" data-parent="#accordion" href="#collapse{{ $loop->iteration }}" aria-expanded="false" aria-controls="collapseOne">
                                    <strong>{{ $row->name }}</strong>
                                </div>
                            </div>
                            <div id="collapse{{ $loop->iteration }}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <div class="row">

                                        @if(!empty($row->staff))
                                        @foreach($row->staff as $staffs)

                                        {{-- @php dd($lang_id[0]) @endphp --}}
                                        <div class="col-lg-4 col-md-6 col-sm-6">
                                            <div class="box">
                                                <div class="outer">
                                                    <div class="frame"> 
                                                        @if(isset($staffs->image))
                                                        <img src="{{ asset($staffs->image)}}" alt="img">
                                                        @else 
                                                        <img src="{{ asset('upload_file/avatar/lochan.png')}}" alt="img">
                                                        @endif
                                                        <div class="caption">
                                                            <div class="inner">
                                                                {!! $row->description !!}
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-box">
                                                    <h3><a href="#">{{ $staffs->name }}</a></h3>
                                                    <strong class="title">{{ $staffs->designation }}</strong> </div>
                                            </div>
                                        </div>
                                       
                                        @endforeach
                                       @endif
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    @endforeach
                    @endif

                </div>
                <div class="col-md-3 col-sm-4">
                    @include('site.includes.sidebar')
                </div>
            </div>
        </div>
    </section>
</div>

@endsection