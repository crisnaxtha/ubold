@if(Route::has($_base_route.'.show'))
<a href="{{ URL::route($_base_route.'.show', [$row->id]) }}"><button type="button" class="btn btn-sm btn-success"><i class="fa fa-eye"></i></button></a>
@endif
