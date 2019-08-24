@if(Route::has($_base_route.'.destroy'))
    <button  id="delete" data-id="{{ $row->id }}" data-url="{{ URL::route($_base_route.'.destroy', ['menu_unique_id'=>$row->menu_unique_id]) }}" type="button" class="btn btn-xs btn-danger"><i class="far fa-trash-alt"></i></button>
@endif
