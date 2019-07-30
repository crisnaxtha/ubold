@if(Auth::user()->role == "admin" || Auth::user()->role == "super-admin")
@if(Route::has($_base_route.'.delete'))
    <button  id="delete" data-id="{{ $row->id }}" data-url="{{ URL::route($_base_route.'.delete', ['id'=>$row->id]) }}" type="button" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i></button>
@endif
@endif
