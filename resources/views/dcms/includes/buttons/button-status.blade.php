@if($row->status)
    <button class="btn btn-xs btn-round btn-success">
        <i class="fa fa-check"></i>
    </button>
@else
    <button class="btn btn-xs btn-round btn-danger">
        <i class="fa fa-minus-circle"></i>
    </button>
@endif
