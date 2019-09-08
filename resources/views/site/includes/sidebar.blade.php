<div class="widget-box">
    <div class="dash_info">
        <div class="owl-carousel info-carousel2">
            <div class="item">
                <div class="card">
                    <div class="card-header"><i class="fa fa-clock-o">&nbsp;</i> आजको दिन </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <span>मो.बि.न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>का.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="col-md-6">
                                <span>ले बि न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>ठ.बि.न  :</span> <span class="counter">433143</span>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <div class="card-header"><i class="fa fa-calendar">&nbsp;</i> Last Week </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <span>मो.बि.न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>का.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="col-md-6">
                                <span>ले बि न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>ठ.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <div class="card-header"><i class="fa fa-calendar">&nbsp;</i> Last Month </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <span>मो.बि.न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>का.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="col-md-6">
                                <span>ले बि न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>ठ.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <div class="card-header"><i class="fa fa-clock-o">&nbsp;</i> आजको दिन </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <span>मो.बि.न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>का.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="col-md-6">
                                <span>ले बि न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>ठ.बि.न  :</span> <span class="counter">433143</span>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <div class="card-header"><i class="fa fa-calendar">&nbsp;</i> Last Week </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <span>मो.बि.न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>का.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="col-md-6">
                                <span>ले बि न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>ठ.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <div class="card-header"><i class="fa fa-calendar">&nbsp;</i> Last Month </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <span>मो.बि.न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>का.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="col-md-6">
                                <span>ले बि न :</span> <span class="counter">456654</span>
                            </div>
                            <div class="col-md-6">
                                <span>ठ.बि.न :</span> <span class="counter">433143</span>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@if(count($data['imp_link']))
<div class="widget-box">
    <h3> <i class="fa fa-link" aria-hidden="true">&nbsp;</i> महत्त्वपूर्ण लिङ्कहरू</h3>
    <ul class="useful-link">
        @foreach($data['imp_link'] as $row)
        <li>
            <a href="{{ $row->url }}" class=""><i class="fa {{ $row->icon }}"></i>{{ $row->name }}</a>
        </li>
        @endforeach
    </ul>
</div>
@endif
@if(count($data['category']))
<div class="widget-box">
    <h3><i class="fa fa-external-link-square">&nbsp;</i> Category List
                    <a href="#">View All</a> </h3>
    <div class="archive-widget">
        <ul>
            @foreach($data['category'] as $row)
            <li>
                @if(Route::has('site.category'))
                <a href="{{ route('site.category', ['id' => $row->id]) }}">
                    <span>
                        <i class="fa fa-bookmark" aria-hidden="true"></i>
                    </span>{{ $row->name }}
                </a>
                @endif
            </li>
            @endforeach
        </ul>
    </div>
</div>
@endif
@if(isset($data['category_first']))
<div class="widget-box">
    <h3> <i class="fa fa-newspaper-o">&nbsp;</i>{{ $data['category_first']->name }}</h3>
    <div class="side-widget">
        <div class="owl-carousel info-carousel3">
            @if(count($data['category_first_post']))
            @foreach($data['category_first_post'] as $row)
            @if($loop->iteration == 1 || $loop->iteration % 4 == 0 )
            <div class="item">
                <ul>
            @endif
                <li class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".2s">
                    <div class="thumb">
                        @if(Route::has('site.post.show'))
                        <a href="{{ route('site.post.show', ['id' => $row->unique_id])}}"><img src="{{ $row->thumbnail }}" alt="img"></a>
                        @endif
                    </div>
                    <div class="text-area">
                        @if(Route::has('site.post.show'))
                        <a href="{{ route('site.post.show', ['id' => $row->unique_id])}}">{{ $row->title }}</a>
                        @endif
                    </div>
                    <div class="author_sec">
                        <span><i class="fa fa-eye" aria-hidden="true"></i> <em>{{ $row->visit_no}}</em></span>
                        {{-- <span><i class="fa fa-user" aria-hidden="true"></i> <em>Admin</em></span> --}}
                        <span><i class="fa fa-clock-o" aria-hidden="true"></i> <em>{{ $row->created_at }}</em></span>
                    </div>
                </li>
            @if( $loop->iteration % 3 == 0 )
                </ul>
            </div>
            @endif
            @endforeach
            @endif
        </div>

    </div>
</div>
@endif
