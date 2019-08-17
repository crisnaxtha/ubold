@if(isset($data['album_category']))
<div class="gallery">
    <div class="container">
       <h4>ग्यालरी  एल्बम
          <span class="pull-right">
          <a href="#" target="_blank" class="btn btn-info btn-sm more_btn">View All &nbsp;
          <i class="fa fa-angle-double-right"></i>
          </a>
          </span>
       </h4>
       <div class="row">
            @foreach($data['album_category'] as $row)
            <div class="col-md-4">
                <div class="owl-carousel gallery-carousel">
                    @foreach($data['cat_album_photo_'.$row->slug] as $album)
                    <div class="item">
                        <div class="item-inner card">
                            <figure>
                                <a href="#">
                                <img src="{{ $album->cover_image }}" class="img-fluid" alt="image" height="400" width="400">
                                </a>
                                <a href="#" class="btn btn-sm btn-danger catagory_link">{{ $row->cat_name }}</a>
                            </figure>
                            <div class="card-body">
                                <a href="#">
                                    <h6 class="card-title">{{ $album->album_name }}</h6>
                                </a>
                                {{-- <p>कुनै समय चितवनको प्रमुख पर्यटकीय गन्तब्य थियो, मेघौली । पर्यटककै चहलपहलले मेघौली विमानस्थल भरतपुर विमानस्थलभन्दा बढी व्यस्त हुन्थ्यो । ...</p> --}}
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            @endforeach
          <div class="clearfix"></div>
       </div>
    </div>
</div>
<div class="clearfix"></div>
</div>
@endif
