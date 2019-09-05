@if(count($data['popup']) != 0)
<div id="myModal2" class="modal fade main-modal" role="dialog">
    <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times"></i> Skip This</button>
            </div>
            <div class="modal-body">
                <div class="owl-carousel popup-carousel">
                    @foreach($data['popup'] as $row)
                    <div class="item">
                        <h4>{{ $row->title }}</h4>
                        <figure>
                            <a href="{{ $row->link }}">
                                <img src="{{ asset($row->image) }}" class="img-fluid">
                            </a>
                        </figure>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endif
