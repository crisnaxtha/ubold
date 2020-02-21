<script>
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
                labels: <?php echo json_encode($data['provinceLabel'], JSON_NUMERIC_CHECK); ?>,
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

<script>
    var color = Chart.helpers.color;
    var barChartData = {
            labels:  <?php echo json_encode($data['districtLabel'], JSON_NUMERIC_CHECK); ?>,
            datasets: [{
                label: 'No of Company Based on District',
                data:  <?php echo json_encode($data['districtData'], JSON_NUMERIC_CHECK); ?>,
                backgroundColor:color(window.chartColors.red).alpha(0.5).rgbString(),
                borderColor: window.chartColors.red,
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
    $('#province_id').change(function() {
        var id = $('#province_id').val();
        // alert(id);
        url = '{{ route('site.provinceDistrictData')}}';
        $.ajax({
            method: 'get',
            dataType: 'json',
            url : url,
            data :{ id: id},
            success: function(data) {
                console.clear();
                console.log(data);
                // window.clear();
                var config = {
                    type: 'bar',
                    data: {
                        datasets: [{
                            data: data.districtData,
                            backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                            borderColor: window.chartColors.red,
                            label: 'Company No. Based on Province'
                        }],
                        labels:  data.districtLabel,
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
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: false
                                }
                            }]
                        },
                    }
                };
                var ctx = document.getElementById('district-chart').getContext('2d');
                myDoughnut.clear();
                window.myDoughnut = new Chart(ctx, config);
            },
            error: function(xHr){
                console.log(xHr.responseText);
            }
        });
    });
</script>
