@if(count($data['services']) != 0)
<div class="white-box sewa">
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <h4>शासन  सेवा </h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        @foreach($data['services'] as $row)
                        <div class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                            <h5>
                                <i class="fa {{ $row->icon }}">&nbsp;</i>{{ $row->title }}
                            </h5>
                            <a href="{{ $row->link }}">{{ $row->description }}</a>
                        </div>
                        @endforeach
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif
