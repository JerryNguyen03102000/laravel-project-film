<aside style="float: right" id="sidebar" class="col-xs-12 col-sm-12 col-md-4">
    <div id="halim_tab_popular_videos-widget-7" class="widget halim_tab_popular_videos-widget">
        <div class="section-bar clearfix">
            <div class="section-title">
                <span>Phim hot</span>
            </div>
        </div>
        <section class="tab-content">
            <div role="tabpanel" class="tab-pane active halim-ajax-popular-post">
                <div class="halim-ajax-popular-post-loading hidden"></div>
                <div id="halim-ajax-popular-post" class="popular-post">
                    @foreach($phimhot_sidebar as $hot_sidebar)
                        <div class="item post-37176">
                            <a href="{{route('movie',$hot_sidebar->slug)}}" title="{{$hot_sidebar->title}}">
                                <div class="item-link">
                                    <img
                                        src="{{asset('/uploads/movie/'.$hot_sidebar->image)}}"
                                        class="lazy post-thumb" alt="{{$hot_sidebar->title}}"
                                        title="{{$hot_sidebar->title}}"/>
                                    <span class="is_trailer">
                                                     @if($hot_sidebar->resolution == 0)
                                            HD
                                        @elseif($hot_sidebar->resolution == 1)
                                            SD
                                        @elseif($hot_sidebar->resolution == 2)
                                            HDcam
                                        @elseif($hot_sidebar->resolution == 3)
                                            Cam
                                        @elseif($hot_sidebar->resolution == 4)

                                            FullHD
                                        @else
                                            Trailer
                                        @endif
                                            </span>
                                </div>
                                <p class="title">{{$hot_sidebar->title}}</p>

                            </a>
                            <div class="viewsCount" style="color: #9d9d9d;">{{rand(1000,100000)}} lượt xem</div>
                            <div style="float: left;">
                                <ul class="list-inline rating"  title="Average Rating">
                                    @for($count=1; $count<=5; $count++)
                                        <li title="star_rating"
                                            style="color:yellow;font-size: 18px;padding: 0"
                                        >&#9733;</li>

                                    @endfor

                                </ul>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
            <div id="halim_tab_popular_videos-widget-7" class="widget halim_tab_popular_videos-widget">
                <div class="section-bar clearfix">
                    <div class="section-title">
                        <span>Phim sắp chiếu</span>
                    </div>
                </div>
                <section class="tab-content">
                    <div role="tabpanel" class="tab-pane active halim-ajax-popular-post">
                        <div class="halim-ajax-popular-post-loading hidden"></div>
                        <div id="halim-ajax-popular-post" class="popular-post">
                            @foreach($phimsapchieu as $sapchieu)
                                <div class="item post-37176">
                                    <a href="{{route('movie', $sapchieu->slug)}}" title="{{ $sapchieu->title}}">
                                        <div class="item-link">
                                            <img
                                                src="{{asset('/uploads/movie/'. $sapchieu->image)}}"
                                                class="lazy post-thumb" alt="{{ $sapchieu->title}}"
                                                title="{{ $sapchieu->title}}"/>
                                            <span class="is_trailer">
                                                     @if( $sapchieu->resolution == 0)
                                                    HD
                                                @elseif( $sapchieu->resolution == 1)
                                                    SD
                                                @elseif( $sapchieu->resolution == 2)
                                                    HDcam
                                                @elseif( $sapchieu->resolution == 3)
                                                    Cam
                                                @elseif( $sapchieu->resolution == 4)

                                                    FullHD
                                                @else
                                                    Trailer
                                                @endif
                                            </span>
                                        </div>
                                        <p class="title">{{ $sapchieu->title}}</p>
                                    </a>
                                    <div class="viewsCount" style="color: #9d9d9d;">2023</div>
                                    <div style="float: left;">
                                        <ul class="list-inline rating"  title="Average Rating">
                                            @for($count=1; $count<=5; $count++)
                                                <li title="star_rating"
                                                    style="color:yellow;font-size: 18px;padding: 0"
                                                >&#9733;</li>

                                            @endfor

                                        </ul>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
        </section>
        <div class="clearfix"></div>
    </div>
</aside>
