@if(Route::has($_base_route.'.edit'))
    <a href="{{ URL::route($_base_route.'.edit', [$row->post_unique_id]) }}"><button type="button" class="btn btn-sm btn-warning"><i class="fas fa-pencil-alt"></i></button></a>
@endif
