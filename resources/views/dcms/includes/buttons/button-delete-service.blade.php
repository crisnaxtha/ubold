@if(Auth::user()->role == "admin" || Auth::user()->role == "super-admin")
@if(Route::has($_base_route.'.destroy'))
    <button  id="delete" data-id="{{ $row->id }}" data-url="{{ URL::route($_base_route.'.destroy', ['service_unique_id'=>$row->service_unique_id]) }}" type="button" class="btn btn-danger"><i class="far fa-trash-alt"></i></button>
@endif
@endif