@if(count($data['date_data']) != 0)
<div class="dash_info">
    <div class="owl-carousel info-carousel">
        @foreach($data['date_data'] as $key => $rows)
        <div class="item">
            <div class="card">
                <div class="card-header"><i class="fa fa-clock-o">&nbsp;</i>{{ ucfirst(str_replace("_"," ",$key)) }} Ago</div>
                <div class="card-body">
                <div class="row">
                    @foreach($rows as $row)
                    @if(isset($row['data']))
                    <div class="col-md-6">
                    <span>{{ $row['title'] }}:</span> <span class="counter">{{ $row['data'] }}</span>
                    </div>
                    @endif
                    @endforeach
                    <div class="clearfix"></div>
                </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endif
