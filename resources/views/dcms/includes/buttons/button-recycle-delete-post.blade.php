@if(Auth::user()->role == "admin" || Auth::user()->role == "super-admin")
@if(Route::has($_base_route.'.delete'))
    <button  id="delete" data-id="{{ $row->id }}" data-url="{{ URL::route($_base_route.'.delete', ['unique_id'=>$row->unique_id]) }}" type="button" class="btn btn-xs btn-danger"><i class="fa fa-trash-o"></i></button>
@endif
@endif
