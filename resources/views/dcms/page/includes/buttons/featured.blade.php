@if(Route::has($_base_route.'.featured'))
    <div class="btn-group">
        <a href="{{ URL::route($_base_route.'.featured') }}" class="btn btn-xs btn-success"><i class="fa fa-plus">&nbsp;Featured {{ $_panel }}</i></a>
    </div>
@endif
