@if(count($data['date_data']) != 0)
<div class="dash_info">
    <div class="owl-carousel info-carousel">
        @foreach($data['date_data'] as $key => $rows)

        @if($loop->iteration === 1)

        @else
        <div class="item">
            <div class="card">
                <div class="card-header">
                    <i class="fa fa-clock-o">&nbsp;</i>{{ __(ucfirst(str_replace("_"," ",$key)).' '.'ago') }}
                </div>
                <div class="card-body">
                    <div class="row">
                        @foreach($rows as $row)
                        @if(isset($row['data']))
                        <div class="col-md-6">
                            <span>{{ __($row['title']) }}:</span> <span class="counter">{{ $row['data'] }}</span>
                        </div>
                        @endif
                        @endforeach
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        @endif
        @endforeach
    </div>
</div>
@endif
