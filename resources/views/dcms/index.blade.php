@extends('dcms.layouts.app')

@section('content')


    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Dashboard</h4>
            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="row">
        @if(Auth::user()->role == "super-admin")
        <div class="col-md-6 col-xl-3">
            <div class="widget-rounded-circle card-box">
                <div class="row">
                    <div class="col-6">
                        <div class="avatar-lg rounded-circle bg-soft-primary border-primary border">
                            <i class="fe-user font-22 avatar-title text-primary"></i>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="text-right">
                            <h3 class="text-dark mt-1"><span>{{ $data['count_user'] }}</span></h3>
                            <p class="text-muted mb-1 text-truncate">{{ __('Users') }}</p>
                        </div>
                    </div>
                </div> <!-- end row-->
            </div> <!-- end widget-rounded-circle-->
        </div> <!-- end col-->
        @endif
        <div class="col-md-6 col-xl-3">
            <div class="widget-rounded-circle card-box">
                <div class="row">
                    <div class="col-6">
                        <div class="avatar-lg rounded-circle bg-soft-success border-success border">
                            <i class="fe-book font-22 avatar-title text-success"></i>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="text-right">
                            <h3 class="text-dark mt-1"><span>{{ $data['count_post'] }}</span></h3>
                            <p class="text-muted mb-1 text-truncate">{{ __('Posts') }}</p>
                        </div>
                    </div>
                </div> <!-- end row-->
            </div> <!-- end widget-rounded-circle-->
        </div> <!-- end col-->

        <div class="col-md-6 col-xl-3">
            <div class="widget-rounded-circle card-box">
                <div class="row">
                    <div class="col-6">
                        <div class="avatar-lg rounded-circle bg-soft-info border-info border">
                            <i class="fe-file font-22 avatar-title text-info"></i>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="text-right">
                            <h3 class="text-dark mt-1"><span> {{ $data['count_page'] }}</span></h3>
                            <p class="text-muted mb-1 text-truncate">{{ __('Pages') }}</p>
                        </div>
                    </div>
                </div> <!-- end row-->
            </div> <!-- end widget-rounded-circle-->
        </div> <!-- end col-->

        <div class="col-md-6 col-xl-3">
            <div class="widget-rounded-circle card-box">
                <div class="row">
                    <div class="col-6">
                        <div class="avatar-lg rounded-circle bg-soft-warning border-warning border">
                            <i class="fe-calendar font-22 avatar-title text-warning"></i>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="text-right">
                            <h5 class="text-dark mt-1"><span>{{ date("Y-m-d") }}</span></h5>
                            <p class="text-muted mb-1 text-truncate">{{ __(date("l")) }}</p>
                        </div>
                    </div>
                </div> <!-- end row-->
            </div> <!-- end widget-rounded-circle-->
        </div> <!-- end col-->
    </div>
    <!-- end row-->

    <div class="row">
        <div class="col-xl-4">
            <div class="card-box">
                <h4 class="header-title mb-3">Visit</h4>

                <div class="widget-chart text-center" dir="ltr">

                </div>
            </div> <!-- end card-box -->
        </div> <!-- end col-->

        <div class="col-xl-8">
            <div class="card-box">
                <h4 class="header-title mb-3">Visti Analytics</h4>
            </div> <!-- end card-box -->
        </div> <!-- end col-->
    </div>
    <!-- end row -->


@endsection

@section('js')
@include('dcms.includes.flash-message')
@endsection
