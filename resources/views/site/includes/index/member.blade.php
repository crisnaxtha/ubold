@if(count($data['member']) != 0)
<div class="home_members">
    <div class="members text-center">
        @if(!empty($data['member']))
        @foreach($data['member'] as $staffs)

        @if(count($staffs) == 1)
        @foreach($staffs as $staff)
        <div class="member_single">
            @if(isset($staff['image']))
            <img src="{{ asset($staff['image'])}}" alt="{{ $staff['name'] }}'" class="img-fluid mx-auto">
            @else
            <img src="{{ asset('assets/site/assets/images/no-image.jpg')}}" alt="{{ $staff['name'] }}'" class="img-fluid mx-auto">
            @endif
            <h6 class="text-center mt-3">
                <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">{{ $staff['name'] }}</a>
            </h6>
            <p class="text-center">{{ $staff['designation'] }}</p>
            @if(isset($staff['phone']))
            <small><i class="fa fa-phone">&nbsp;</i>{{ $staff['phone'] }}</small>
            @endif
        </div>
        @endforeach
        
        @elseif(count($staffs) > 1)
        <div class="member_multiple">
            <div class="row">
                @foreach($staffs as $staff)
                <div class="col-md-6  wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                    @if(isset($staff['image']))
                    <img src="{{ asset($staff['image'])}}" alt="{{ $staff['name'] }}'" class="img-fluid mx-auto">
                    @else
                    <img src="{{ asset('assets/site/assets/images/no-image.jpg')}}" alt="{{ $staff['name'] }}'" class="img-fluid mx-auto">
                    @endif
                    <h6 class="text-center mt-3">
                        <a href="#" class="showToolTip" title="" data-original-title="Click to view detail">{{ $staff['name'] }}</a>
                    </h6>
                    <p class="text-center">{{ $staff['designation'] }}</p>
                    @if(isset($staff['phone']))
                    <small><i class="fa fa-phone">&nbsp;</i>{{ $staff['phone'] }}</small>
                    @endif
               </div>
               @endforeach
               <div class="clearfix"></div>
            </div>
        </div>
        @endif

        @endforeach
        @endif
        <div class="clearfix"></div>
    </div>
</div>
@endif
