<script>

var color = Chart.helpers.color;

    //Donut Pie chart
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
            window.province = new Chart(ctx, config);
        };

        $('#submit_province').on('click', function(e) {
            var from = $("input[name=from]").val();
            var to = $("input[name=to]").val();
            if(!from || !to) {
                alert('Please select both from date and to date. Thank you !!');
                exit();
            }

            var fromDate = new Date(from);
            var toDate = new Date(to);
            // console.log(fromDate.getTime());
            // console.log(toDate.getTime());
            if (fromDate.getTime() > toDate.getTime() ) {
                alert("From date should be Older");
                exit();
            }
        url = `{{ route('api.provinceDataBasedOnTime')}}`;
        // alert(url);
        $.ajax({
            method: 'get',
            dataType: 'json',
            url : url,
            data :{ from: from, to: to},
            success: function(data) {
                console.clear();
                console.log(data);
                
                var config = {
                                type: 'doughnut',
                                data: {
                                    datasets: [{
                                        data: data.provinceData,
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
                                    labels: data.provinceLabel,
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
              
                if (typeof(window.province) != "undefined") {
                    window.province.destroy();
                }
                var ctx = document.getElementById('province-chart').getContext('2d');
                window.province = new Chart(ctx, config);
                window.province.update();
            },
            error: function(xHr){
                console.log(xHr.responseText);
            }
        });
    });


// Bar chart 

        var configBar = {
                    type: 'bar',
                    data: {
                        labels:  <?php echo json_encode($data['districtLabel'], JSON_NUMERIC_CHECK); ?>,
                        datasets: [{
                            label: 'No of Company ',
                            data:  <?php echo json_encode($data['districtData'], JSON_NUMERIC_CHECK); ?>,
                            backgroundColor:color(window.chartColors.red).alpha(0.5).rgbString(),
                            borderColor: window.chartColors.red,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: true,
                        legend: {
                            position: 'top',
                        },
                        title: {
                            display: true,
                            text: 'Company No. '
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
    var myChart = new Chart(ctx, configBar);
    window.myChart.update();


// On change of the dropdown 

    $('#province_id').change(function() {
        var flag = $('#province_id').val();
        // alert(flag);
        url = '{{ route('site.timeBasedData')}}';
        $.ajax({
            method: 'get',
            dataType: 'json',
            url : url,
            data :{ flag: flag},
            success: function(data) {
                console.clear();
                console.log(data);
                
                var config = {
                    type: 'bar',
                    data: {
                        datasets: [{
                            data: data.districtData,
                            backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                            borderColor: window.chartColors.red,
                            label: 'Company No.'
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
                            text: 'Company No.'
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
              
                if (typeof(window.myChart) != "undefined") {
                    window.myChart.destroy();
                }
                var ctx = document.getElementById('district-chart').getContext('2d');
                window.myChart = new Chart(ctx, config);
                window.myChart.update();
            },
            error: function(xHr){
                console.log(xHr.responseText);
            }
        });
    });
</script>
