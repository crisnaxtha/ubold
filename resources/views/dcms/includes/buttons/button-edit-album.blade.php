@if(Route::has($_base_route.'.edit'))
    <a href="{{ URL::route($_base_route.'.edit', [$row->id]) }}"><button type="button" class="btn btn-warning"><i class="fa fa-pencil"></i>&nbsp;Edit Album</button></a>
@endif