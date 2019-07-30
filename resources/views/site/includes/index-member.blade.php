@if(isset($data['member']))

<div class="home_members">
    <div class="members text-center">
@foreach($data['member'] as $row)
@if($loop->iteration == 1 || $loop->iteration == 4 || $loop->iteration == 5 || $loop->iteration == 6)

        <div class="member_single">
            <img src="{{ $row->image }}" alt="{{ $row->name }}" class="img-fluid mx-auto">
                <h6 class="text-center mt-3">
                    <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
{{ $row->name }}</a>
                </h6>
                <p class="text-center">{{ $row->designation }}</p>
            </div>
@endif
@if($loop->iteration == 2 || $loop->iteration == 3)
@if($loop->iteration == 2 )

            <div class="member_multiple">
                <div class="row">
                    <div class="col-md-6">
                        <img src="{{ $row->image }}" alt="{{ $row->name }}'" class="img-fluid mx-auto">
                            <h6 class="text-center mt-3">
                                <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
{{ $row->name }}</a>
                            </h6>
                            <p class="text-center">{{ $row->designation }}</p>
                        </div>
@endif

@if($loop->iteration == 3)

                        <div class="col-md-6">
                            <img src="{{ $row->image }}" alt="{{ $row->name }}'" class="img-fluid mx-auto">
                                <h6 class="text-center mt-3">
                                    <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">
{{ $row->name }}</a>
                                </h6>
                                <p class="text-center">{{ $row->designation }}</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
@endif
@endif
@endforeach

                </div>
            </div>

@endif
