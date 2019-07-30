@if(Route::has($_base_route.'.destroyFile'))
    <button  id="delete" data-id="{{ $row->id }}" data-url="{{ URL::route($_base_route.'.destroyFile', ['id'=>$row->id]) }}" type="button" class="btn btn-sm btn-round btn-danger"><i class="far fa-trash-alt"></i></button>
@endif
