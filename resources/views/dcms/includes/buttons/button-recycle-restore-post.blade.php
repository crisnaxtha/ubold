@if(Route::has($_base_route.'.restore'))
    <button  id="restore" data-id="{{ $row->id }}" data-url="{{ URL::route($_base_route.'.restore', ['unique_id'=>$row->unique_id]) }}" type="button" class="btn btn-xs btn-success"><i class="fa fa-reply"></i></button>
@endif

