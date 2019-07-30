@if($row->status)
    <button class="btn btn-sm btn-round btn-success">
        <i class="fa fa-check"></i>
    </button>
@else
    <button class="btn btn-sm btn-round btn-danger">
        <i class="fa fa-minus-circle"></i>
    </button>
@endif
