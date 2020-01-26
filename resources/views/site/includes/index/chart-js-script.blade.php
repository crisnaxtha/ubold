<script>
    var color = Chart.helpers.color;
    var barChartData = {
            labels:  <?php echo json_encode($data['districtLabel'], JSON_NUMERIC_CHECK); ?>,
            datasets: [{
                label: 'No of Company Based on District',
                data:  <?php echo json_encode($data['districtData'], JSON_NUMERIC_CHECK); ?>,
                backgroundColor:color(window.chartColors.blue).alpha(0.5).rgbString(),
                borderColor: window.chartColors.blue,
                borderWidth: 1
            }]
        }
    var ctx = document.getElementById('district-chart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: barChartData,
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: false
                    }
                }]
            },
            title: {
                display: true,
                text: 'Company No. Based on District'
            }
        }
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
                        window.chartColors.purple,
                        window.chartColors.gray,
                    ],
                    label: 'Dataset 1'
                }],
                labels:  <?php echo json_encode($data['provinceLabel'], JSON_NUMERIC_CHECK); ?>,
            },
            options: {
                responsive: true,
                legend: {
                    position: 'top',
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
            var ctx = document.getElementById('province-chart').getContext('2d');
            window.myDoughnut = new Chart(ctx, config);
        };
</script>
