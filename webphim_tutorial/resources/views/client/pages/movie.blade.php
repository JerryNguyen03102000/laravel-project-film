@extends('client.layout')
@section('content')
    <div class="row container" id="wrapper">
        <div class="halim-panel-filter">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="yoast_breadcrumb hidden-xs"><span><span><a
                                        href="{{route('category',['slug'=>$movie->category->slug])}}">{{$movie->category->title}}</a> » <span>
                                        <a href="{{route('country',['slug'=>$movie->country->slug])}}">{{$movie->country->title}}</a> »
                                        <span class="breadcrumb_last"
                                              aria-current="page">{{$movie->title}}</span></span></span></span>
                        </div>
                    </div>
                </div>
            </div>
            <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
                <div class="ajax"></div>
            </div>
        </div>
        <main id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
            <section id="content" class="test">
                <div class="clearfix wrap-content">
                    <div class="halim-movie-wrapper">
                        <div class="title-block">
                            <div id="bookmark" class="bookmark-img-animation primary_ribbon" data-id="38424">
                                <div class="halim-pulse-ring"></div>
                            </div>
                            <div class="title-wrapper" style="font-weight: bold;">
                                Bookmark
                            </div>
                        </div>
                        <div class="movie_info col-xs-12">
                            <div class="movie-poster col-md-3">
                                <img class="movie-thumb" src="{{asset('/uploads/movie/'.$movie->image)}}"
                                     alt="{{$movie->title}}">
                                @if($movie->resolution != 5)
                                    @if($episode_current_count>0)
                                        <div class="bwa-content">
                                            <div class="loader"></div>
                                            <a href="{{route('watch',['slug'=>$movie->slug,'tap-phim'=>$episode_tapdau->episode])}}"
                                               class="bwac-btn">
                                                <i class="fa fa-play"></i>
                                            </a>
                                        </div>
                                    @endif
                                @else
                                    <a href="#trailer" style="width: 100%" class="btn btn-primary watch_trailer ">Xem
                                        trailer</a>
                                @endif
                            </div>
                            <div class="film-poster col-md-9">
                                <h1 class="movie-title title-1"
                                    style="display:block;line-height:35px;margin-bottom: -14px;color: #ffed4d;text-transform: uppercase;font-size: 18px;">{{$movie->title}}</h1>
                                <h2 class="movie-title title-2" style="font-size: 12px;">{{$movie->name_eng}}</h2>
                                <ul class="list-info-group">
                                    <li class="list-info-group-item"><span>Trạng Thái</span> : <span class="quality">
                                            @if($movie->resolution == 0)
                                                HD
                                            @elseif($movie->resolution == 1)
                                                SD
                                            @elseif($movie->resolution == 2)
                                                HDcam
                                            @elseif($movie->resolution == 3)
                                                Cam
                                            @elseif($movie->resolution == 4)
                                                FullHD
                                            @else
                                                Trailer
                                            @endif
                                        </span>
                                        @if($movie->resolution != 5)
                                            <span class="episode">
                                            @if($movie->subtitle == 0)
                                                    Vietsub
                                                @else
                                                    Thuyết minh
                                                @endif
                                           </span>
                                        @endif
                                    </li>
                                    <li class="list-info-group-item"><span>Thời lượng</span> : {{$movie->thoiluong}}
                                    @if($movie->thuocphim == 'phimbo')
                                        <li class="list-info-group-item"><span>Tập phim</span>
                                            : {{$episode_current_count}}/{{$movie->sotap}} -
                                            @if($episode_current_count == $movie->sotap)
                                                Hoàn thành
                                            @else
                                                Đang cập nhật
                                            @endif
                                        </li>
                                    @elseif($movie->thuocphim == 'phimle')
                                        <li class="list-info-group-item"><span>Tổng số tập</span>
                                            : 1
                                        </li>
                                    @endif


                                    <li class="list-info-group-item">
                                        <span>Thể loại</span> :
                                        @foreach($movie->movie_genre as $gen)
                                            <a href="{{route('genre',['slug'=>$gen->slug])}}"
                                               rel="tag">{{$gen->title}}</a>
                                        @endforeach

                                    </li>
                                    <li class="list-info-group-item"><span>Danh mục phim</span> : <a
                                            href="{{route('category',['slug'=>$movie->category->slug])}}"
                                            rel="tag">{{$movie->category->title}}</a></li>
                                    <li class="list-info-group-item"><span>Quốc gia</span> : <a
                                            href="{{route('country',['slug'=>$movie->country->slug])}}"
                                            rel="tag">{{$movie->country->title}}</a></li>
                                    @if($episode_current_count>0)
                                        @if($movie->thuocphim == 'phimbo')
                                            <li class="list-info-group-item"><span>Tập phim mới nhất</span> :
                                                @foreach($episode as $tapphim)
                                                    <a href="{{route('watch',['slug'=>$tapphim->movie->slug,'tap-phim'=>$tapphim->episode])}}"
                                                       rel="tag"> Tập {{$tapphim->episode}}</a>
                                                @endforeach
                                            </li>
                                        @else
                                            <li class="list-info-group-item"><span>Năm sản xuất</span> :
                                                {{$movie->year}}
                                            </li>
                                        @endif
                                    @else
                                        <li class="list-info-group-item"><span>Tình trạng</span> :
                                         Chưa ra mắt
                                        </li>
                                    @endif
                                </ul>
                                <div class="movie-trailer hidden"></div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div id="halim_trailer"></div>
                    <div class="clearfix"></div>
                    <div class="section-bar clearfix">
                        <h2 class="section-title"><span style="color:#ffed4d">Nội dung phim</span></h2>
                    </div>
                    <div class="entry-content htmlwrap clearfix">
                        <div class="video-item halim-entry-box">
                            <article id="post-38424" class="item-content">
                                {{$movie->description}}
                            </article>
                        </div>
                    </div>
                    @if($movie->trailer != null)
                        <div class="section-bar clearfix">
                            <h2 class="section-title"><span style="color:#ffed4d">Trailer phim</span></h2>
                        </div>
                        <div class="entry-content htmlwrap clearfix">
                            <div class="video-item halim-entry-box">
                                <article id="trailer" class="item-content">
                                    <iframe width="100%" height="380px"
                                            src="https://www.youtube.com/embed/{{$movie->trailer}}"
                                            title="YouTube video player"
                                            frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen></iframe>
                                </article>
                            </div>
                        </div>
                    @endif
                    @php
                        $current_url = \Request::url();

                    @endphp
                    <div class="section-bar clearfix">
                        <h2 class="section-title"><span style="color:#ffed4d">Bình luận</span></h2>
                    </div>
                    <div class="entry-content htmlwrap clearfix">
                        <div class="video-item halim-entry-box">
                            <article id="trailer" class="item-content">
                                <div class="fb-comments" data-href="{{$current_url}}" data-width="100%"
                                     data-numposts="5"></div>
                            </article>
                        </div>
                    </div>
                </div>

            </section>
            <section class="related-movies">
                <div id="halim_related_movies-2xx" class="wrap-slider">
                    <div class="section-bar clearfix">
                        <h3 class="section-title"><span>CÓ THỂ BẠN MUỐN XEM</span></h3>
                    </div>
                    <div id="halim_related_movies-2" class="owl-carousel owl-theme related-film">
                        @foreach($movie_relateds as $key => $movie_related)
                            <article class="thumb grid-item post-38498">
                                <div class="halim-item">
                                    <a class="halim-thumb" href="{{route('movie',$movie_related->slug)}}"
                                       title="{{$movie_related->title}}">
                                        <figure><img class="lazy img-responsive"
                                                     src="{{asset('/uploads/movie/'.$movie_related->image)}}"
                                                     alt="{{$movie_related->title}}" title="{{$movie_related->title}}">
                                        </figure>
                                        <span class="status">           @if($movie_related->resolution == 0)
                                                HD
                                            @elseif($movie_related->resolution == 1)
                                                SD
                                            @elseif($movie_related->resolution == 2)
                                                HDcam
                                            @elseif($movie_related->resolution == 3)
                                                Cam
                                            @elseif($movie_related->resolution == 4)
                                                FullHD
                                            @else
                                                Trailer
                                            @endif</span><span class="episode"><i class="fa fa-play"
                                                                                  aria-hidden="true"></i>
                                @if($movie_related->subtitle == 0)
                                                Phụ đề
                                                @if($movie_related->season != 0 )
                                                    - Season {{$movie_related->season}}
                                                @endif
                                            @else
                                                Thuyết minh
                                                @if($movie_related->season != 0 )
                                                    - Season {{$movie_related->season}}
                                                @endif
                                            @endif
                                </span>
                                        <div class="icon_overlay"></div>
                                        <div class="halim-post-title-box">
                                            <div class="halim-post-title ">
                                                <p class="entry-title">{{$movie_related->title}}</p>
                                                <p class="original_title">{{$movie_related->name_eng}}</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </article>
                        @endforeach
                    </div>
                    <script>
                        $(document).ready(function ($) {
                            var owl = $('#halim_related_movies-2');
                            owl.owlCarousel({
                                loop: true,
                                margin: 4,
                                autoplay: true,
                                autoplayTimeout: 4000,
                                autoplayHoverPause: true,
                                nav: true,
                                navText: ['<i class="fa-sharp fa-solid fa-caret-left"></i>', '<i class="fa-sharp fa-solid fa-caret-right"></i>'],
                                responsiveClass: true,
                                responsive: {0: {items: 2}, 480: {items: 3}, 600: {items: 4}, 1000: {items: 4}}
                            })
                        });
                    </script>
                </div>
            </section>
        </main>
        @include('client.include.sidebar')
    </div>
@endsection
