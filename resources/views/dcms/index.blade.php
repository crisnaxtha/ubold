@extends('dcms.layouts.app')

@section('content')
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
        <div class="col-xl-6">
            <div class="card-box">
                <h4 class="header-title mb-3">Last 12 Month Visit Analytics</h4>
                <div class="widget-chart text-center" dir="ltr">
                    <canvas id="myChartOne"  width="390" height="370" aria-label="Hello ARIA World" role="img"></canvas>
                </div>
            </div> <!-- end card-box -->
        </div> <!-- end col-->

        <div class="col-xl-6">
            <div class="card-box">
                <h4 class="header-title mb-3">Last 12 Days Vist Analytics</h4>
                <canvas id="myChart"  width="30" height="30" aria-label="Hello ARIA World" role="img"></canvas>
            </div> <!-- end card-box -->
        </div> <!-- end col-->
    </div>
    <!-- end row -->


@endsection

@section('js')
@include('dcms.includes.flash-message')


<script>
        var color = Chart.helpers.color;
        var barChartData = {
                labels: <?php echo json_encode($data['day_date'], JSON_NUMERIC_CHECK); ?>,
                datasets: [{
                    label: 'Number Of Visit',
                    data: <?php echo json_encode($data['day_count'], JSON_NUMERIC_CHECK); ?>,
                    backgroundColor:color(window.chartColors.red).alpha(0.5).rgbString(),
                    borderColor: window.chartColors.red,
                    borderWidth: 1
                }]
            }
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: barChartData,
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
</script>

<script>
var color = Chart.helpers.color;
var lineData = {
        labels: <?php echo json_encode($data['month_date'], JSON_NUMERIC_CHECK); ?>,
        datasets: [{
            steppedLine: false,
            label: 'Number Of Visit',
            data: <?php echo json_encode($data['month_count'], JSON_NUMERIC_CHECK); ?>,
            backgroundColor:color(window.chartColors.red).alpha(0.5).rgbString(),
            borderColor: window.chartColors.red,
            fill: false,
        }]
    }
var ctx = document.getElementById('myChartOne').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: lineData,
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
</script>
@endsection
