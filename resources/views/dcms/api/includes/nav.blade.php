@if(Route::has($_base_route.'.province'))
    <div class="btn-group">
        <a href="{{ URL::route($_base_route.'.province') }}" class="btn btn-xs btn-success"><i class="fa fa-plus">&nbsp;District {{ $_panel }}</i></a>
    </div>
@endif
@if(Route::has($_base_route.'.district'))
    <div class="btn-group">
        <a href="{{ URL::route($_base_route.'.district') }}" class="btn btn-xs btn-success"><i class="fa fa-plus">&nbsp;Province {{ $_panel }}</i></a>
    </div>
@endif
@if(Route::has($_base_route.'.date'))
    <div class="btn-group">
        <a href="{{ URL::route($_base_route.'.date') }}" class="btn btn-xs btn-success"><i class="fa fa-plus">&nbsp;Date {{ $_panel }}</i></a>
    </div>
@endif
