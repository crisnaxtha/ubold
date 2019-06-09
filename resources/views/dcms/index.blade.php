@extends('dcms.layouts.app')

@section('content')
             <!--state overview start-->
             <div class="row state-overview">
                {{-- check if the user is SUPER-ADMIN --}}
                @if(Auth::user()->role == "super-admin")
                    <div class="col-lg-3 col-sm-6">
                        <section class="panel">
                            <div class="symbol terques">
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="value">
                                <h1 class="">
                                    {{ $data['count_user'] }}
                                </h1>
                                <p>{{ __('Users') }}</p>
                            </div>
                        </section>
                    </div>
                @endif
                {{--END:: check if the user is SUPER-ADMIN --}}                    
                    <div class="col-lg-3 col-sm-6">
                        <section class="panel">
                            <div class="symbol red">
                                <i class="fa fa-book"></i>
                            </div>
                            <div class="value">
                                <h1 class="">
                                    {{ $data['count_post'] }}
                                </h1>
                                <p>{{ __('Posts') }}</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <section class="panel">
                            <div class="symbol yellow">
                                <i class="fa fa-file-o"></i>
                            </div>
                            <div class="value">
                                <h1 class="">
                                    {{ $data['count_page'] }}
                                </h1>
                                <p>{{ __('Pages') }}</p>
                            </div>
                        </section>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <section class="panel">
                            <div class="symbol blue">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <div class="value">
                                <h4 class="">
                                    @php echo date("Y-m-d") @endphp
                                </h4>
                                <p> {{ __(date("l")) }} </p>
                            </div>
                        </section>
                    </div>
                </div>
                <!--state overview end-->
  
                <div class="row">
                    <div class="col-lg-6">
                        <!--new earning start-->
                        <div class="panel terques-chart">
                            <div class="panel-body chart-texture">
                                <div class="chart">
                                    <div class="heading">
                                        <span>{{__('Last twelve months website visitor graph( Line Graph )')}}</span>
                                    </div>
                                    <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[@foreach($data['last_twelve_month_data'] as $row) {{ $row[1]  }} @if($loop->last) @else {{","}} @endif @endforeach]"></div>
                                </div>
                            </div>
                            <div class="chart-tittle">
                                <ul class="x-axis">
                                    @foreach( $data['last_twelve_month_data'] as $row)
                                    <li><span>{{ date('y-M', strtotime($row[0])) }}</span></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                        <!--new earning end-->
                    </div>
                    <div class="col-lg-6">
                        <!--new earning start-->
                        <div class="panel terques-chart">
                            <div class="panel-body chart-texture">
                                <div class="chart">
                                    <div class="heading">
                                        <span>{{__('Last twelve months website visitor graph( Pie Graph )')}}</span>
                                    </div>
                                    <div class="sparkline" data-type="pie" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[@foreach($data['last_twelve_month_data'] as $row) {{ $row[1]  }} @if($loop->last) @else {{","}} @endif @endforeach]"></div>
                                </div>
                            </div>
                            <div class="chart-tittle">
                                    <div class="heading">
                                            <span>{{ __('Last twelve months website visitor graph( Pie Graph )') }}</span>
                                    </div>
                            </div>
                        </div>
                        <!--new earning end-->
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <!--custom chart start-->
                        <div class="border-head">
                            <h3>Page Visit Graph</h3>
                        </div>
                        <div class="custom-bar-chart">
                            <ul class="y-axis">
                                @for($i = 5600; $i >= 0; $i = $i-400)
                                <li><span>{{$i}}</span></li>
                                @endfor
                            </ul>
                            @foreach($data['last_twelve_day_data'] as $row)
                            <div class="bar">
                                <div class="title">{{ date('M-d-D', strtotime($row[0])) }}</div>
                                <div class="value tooltips" data-original-title="{{ $row[1] }}" data-toggle="tooltip" data-placement="top">{{ $row[1] }}</div>
                            </div>
                            @endforeach
                        </div>
                        <!--custom chart end-->
                    </div>
                </div>
  
@endsection

@section('js')
@include('dcms.includes.flash-message')
@endsection