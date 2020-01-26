@extends('site.layouts.app')

@section('content')

<div class="mid_part">
	<div class="container">
		<div class="row">
		    <div class="col-lg-9 col-md-8">
                @include('site.includes.index.index-stat')
                @include('site.includes.index.index-chart')
                @include('site.includes.index.index-imp-link')
                @include('site.includes.index.index-tab')
                @include('site.includes.index.index-video')
            </div>
            <div class="col-lg-3 col-md-4">
                @include('site.includes.index.index-member')
                @include('site.includes.index.index-tweet')
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    @include('site.includes.index.index-about')
    @include('site.includes.index.index-sewa')
    @include('site.includes.index.index-gallery')
</div>
@include('site.includes.index.popup')
@endsection

@section('js')
<script type="text/javascript">
    $(document).ready(function() {
      new WOW().init();
    })
</script>
<script>
 $(document).ready(function(){
   $('#myModal2').modal('show');
    });

</script>

<script>
    var randomScalingFactor = function() {
        return Math.round(Math.random() * 100);
    };

    var config = {
        type: 'doughnut',
        data: {
            datasets: [{
                data: <?php echo json_encode($data['provinceData'], JSON_NUMERIC_CHECK); ?>,
                backgroundColor: [
                    window.chartColors.red,
                    window.chartColors.orange,
                    window.chartColors.yellow,
                    window.chartColors.green,
                    window.chartColors.blue,
                    window.chartColors.blue,
                    window.chartColors.blue,
                    window.chartColors.black,
                ],
                label: 'Dataset 1'
            }],
            labels: <?php echo json_encode($data['provinceLabel'], JSON_NUMERIC_CHECK); ?>
        },
        options: {
            responsive: true,
            legend: {
                position: 'bottom',
            },
            title: {
                display: true,
                text: 'Company No. Based on Province'
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    };

    window.onload = function() {
        var ctx = document.getElementById('chart-area').getContext('2d');
        window.myDoughnut = new Chart(ctx, config);
    };

    document.getElementById('randomizeData').addEventListener('click', function() {
        config.data.datasets.forEach(function(dataset) {
            dataset.data = dataset.data.map(function() {
                return randomScalingFactor();
            });
        });

        window.myDoughnut.update();
    });

    var colorNames = Object.keys(window.chartColors);
    document.getElementById('addDataset').addEventListener('click', function() {
        var newDataset = {
            backgroundColor: [],
            data: [],
            label: 'New dataset ' + config.data.datasets.length,
        };

        for (var index = 0; index < config.data.labels.length; ++index) {
            newDataset.data.push(randomScalingFactor());

            var colorName = colorNames[index % colorNames.length];
            var newColor = window.chartColors[colorName];
            newDataset.backgroundColor.push(newColor);
        }

        config.data.datasets.push(newDataset);
        window.myDoughnut.update();
    });

    document.getElementById('addData').addEventListener('click', function() {
        if (config.data.datasets.length > 0) {
            config.data.labels.push('data #' + config.data.labels.length);

            var colorName = colorNames[config.data.datasets[0].data.length % colorNames.length];
            var newColor = window.chartColors[colorName];

            config.data.datasets.forEach(function(dataset) {
                dataset.data.push(randomScalingFactor());
                dataset.backgroundColor.push(newColor);
            });

            window.myDoughnut.update();
        }
    });

    document.getElementById('removeDataset').addEventListener('click', function() {
        config.data.datasets.splice(0, 1);
        window.myDoughnut.update();
    });

    document.getElementById('removeData').addEventListener('click', function() {
        config.data.labels.splice(-1, 1); // remove the label first

        config.data.datasets.forEach(function(dataset) {
            dataset.data.pop();
            dataset.backgroundColor.pop();
        });

        window.myDoughnut.update();
    });

    document.getElementById('changeCircleSize').addEventListener('click', function() {
        if (window.myDoughnut.options.circumference === Math.PI) {
            window.myDoughnut.options.circumference = 2 * Math.PI;
            window.myDoughnut.options.rotation = -Math.PI / 2;
        } else {
            window.myDoughnut.options.circumference = Math.PI;
            window.myDoughnut.options.rotation = -Math.PI;
        }

        window.myDoughnut.update();
    });
</script>
@endsection


