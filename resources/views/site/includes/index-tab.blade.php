<div class="tab_sec">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#info" role="tab" aria-controls="home" aria-selected="true">
                    <i class="fa fa-bell">&nbsp;</i> सूचना
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#press" role="tab" aria-controls="profile" aria-selected="false">
                    <i class="fa fa-file-text">&nbsp;</i> प्रेस बिज्ञप्ति
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#news" role="tab" aria-controls="contact" aria-selected="false">
                    <i class="fa fa-newspaper-o">&nbsp;</i> समाचार
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#patra" role="tab" aria-controls="contact" aria-selected="false">
                    <i class="fa fa-file">&nbsp;</i> बोलपत्र
                </a>
            </li>
        </ul>
        <div class="tab-content card white-box" id="myTabContent">
            <div class="tab-pane fade show active" id="info" role="tabpanel" aria-labelledby="home-tab">
                <div class="owl-carousel info-carousel">
@if(isset($data['cat_post_1']))
@foreach($data['cat_post_1'] as $row)

                    <div class="item">
                        <div class="item-inner card">
      {{--
                            <figure>
                                <a href="#">
                                    <img src="images/service/service-1.jpg" class="img-fluid" alt="image">
                                    </a>
                                </figure> --}}

                                <div class="card-body">
                                    <div class="card-meta">
                                        <i class="fa fa-clock-o">&nbsp;</i>{{ $row->created_at }}
                                    </div>
                                    <a href="#">
                                        <h6 class="card-title">{{ $row->title }}</h6>
                                    </a>
      {!! mb_strimwidth($row->content, 0, 100, "...") !!}

                                </div>
                            </div>
                        </div>
  @endforeach
  @endif

                    </div>
                </div>
                <div class="tab-pane fade" id="press" role="tabpanel" aria-labelledby="press-tab">
                    <div class="owl-carousel info-carousel">
@if(isset($data['cat_post_2']))
@foreach($data['cat_post_2'] as $row)

                        <div class="item">
                            <div class="item-inner card">
    {{--
                                <figure>
                                    <a href="#">
                                        <img src="images/service/service-1.jpg" class="img-fluid" alt="image">
                                        </a>
                                    </figure> --}}

                                    <div class="card-body">
                                        <div class="card-meta">
                                            <i class="fa fa-clock-o">&nbsp;</i>{{ $row->created_at }}
                                        </div>
                                        <a href="#">
                                            <h6 class="card-title">{{ $row->title }}</h6>
                                        </a>
    {!! mb_strimwidth($row->content, 0, 100, "...") !!}

                                    </div>
                                </div>
                            </div>
@endforeach
@endif

                        </div>
                    </div>
                    <div class="tab-pane fade" id="news" role="tabpanel" aria-labelledby="news-tab">
                        <div class="owl-carousel info-carousel">

@if(isset($data['cat_post_3']))
@foreach($data['cat_post_3'] as $row)

                            <div class="item">
                                <div class="item-inner card">
    {{--
                                    <figure>
                                        <a href="#">
                                            <img src="images/service/service-1.jpg" class="img-fluid" alt="image">
                                            </a>
                                        </figure> --}}

                                        <div class="card-body">
                                            <div class="card-meta">
                                                <i class="fa fa-clock-o">&nbsp;</i>{{ $row->created_at }}
                                            </div>
                                            <a href="#">
                                                <h6 class="card-title">{{ $row->title }}</h6>
                                            </a>
    {!! mb_strimwidth($row->content, 0, 100, "...") !!}

                                        </div>
                                    </div>
                                </div>
@endforeach
@endif

                            </div>
                        </div>
                        <div class="tab-pane fade" id="patra" role="tabpanel" aria-labelledby="patra-tab">
                            <div class="owl-carousel info-carousel">
@if(isset($data['cat_post_4']))
@foreach($data['cat_post_4'] as $row)

                                <div class="item">
                                    <div class="item-inner card">
    {{--
                                        <figure>
                                            <a href="#">
                                                <img src="images/service/service-1.jpg" class="img-fluid" alt="image">
                                                </a>
                                            </figure> --}}

                                            <div class="card-body">
                                                <div class="card-meta">
                                                    <i class="fa fa-clock-o">&nbsp;</i>{{ $row->created_at }}
                                                </div>
                                                <a href="#">
                                                    <h6 class="card-title">{{ $row->title }}</h6>
                                                </a>
    {!! mb_strimwidth($row->content, 0, 100, "...") !!}

                                            </div>
                                        </div>
                                    </div>
@endforeach
@endif

                                </div>
                            </div>
                        </div>
                    </div>
