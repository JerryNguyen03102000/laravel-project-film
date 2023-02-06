@extends('client.layout')
@section('content')
    <div class="row container" id="wrapper">
        <div class="halim-panel-filter">
            <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
                <div class="ajax"></div>
            </div>
        </div>
        <div id="halim_related_movies-2xx" class="wrap-slider">
            <div class="section-bar clearfix">
                <h3 class="section-title"><span>HÔM NAY XEM PHIM GÌ?</span></h3>
            </div>
            <div id="phimhot_slide" class="owl-carousel ">
                @foreach($phim_hot as $phim)
                    <article class="thumb grid-item post-38498">
                        <div class="halim-item">
                            <a class="halim-thumb" href="{{route('movie',$phim->slug)}}" title="{{$phim->title}}">
                                <figure><img class="lazy img-responsive"
                                             src="{{asset('/uploads/movie/'.$phim->image)}}"
                                             alt="{{$phim->title}}" title="{{$phim->title}}"></figure>
                                <span class="status">
                                     @if($phim->resolution == 0)
                                        HD
                                    @elseif($phim->resolution == 1)
                                        SD
                                    @elseif($phim->resolution == 2)
                                        HDcam
                                    @elseif($phim->resolution == 3)
                                        Cam
                                    @elseif($phim->resolution == 4)
                                        FullHD
                                    @else
                                      Trailer
                                    @endif
                                </span><span class="episode">
                                    <i class="fa fa-play" aria-hidden="true"></i>
                                    @if($phim->subtitle == 0)
                                       Vietsub

                                    @else
                                        Thuyết Minh

                                    @endif
                                </span>
                                <div class="icon_overlay"></div>
                                <div class="halim-post-title-box">
                                    <div class="halim-post-title ">
                                        <p class="entry-title">{{$phim->title}}</p>
                                        <p class="original_title">{{$phim->name_eng}}</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </article>
                @endforeach
            </div>
            <script>
                $(document).ready(function ($) {
                    var owl = $('#phimhot_slide');
                    owl.owlCarousel({
                        loop: true,
                        margin: 4,
                        autoplay: true,
                        autoplayTimeout: 4000,
                        autoplayHoverPause: true,
                        nav: true,
                        navText: ['<i class="fa-sharp fa-solid fa-caret-left"></i>',
                            '<i class="fa-sharp fa-solid fa-caret-right"></i>'],
                        responsiveClass: true,
                        responsive: {
                            0: {items: 2}, 480:
                                {items: 5}, 600: {items: 5}, 1000: {items: 5}
                        }
                    })
                });
            </script>
        </div>

        <main id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
            @foreach($category_home as $key => $cate_home)
                <section id="halim-advanced-widget-2">
                    <div class="section-heading">
                        <a href="{{route('category',$cate_home->slug)}}" title="{{$cate_home->title}}">
                            <span class="h-text">{{$cate_home->title}}</span>
                        </a>
                    </div>

                    <div id="halim-advanced-widget-2-ajax-box" class="halim_box">
                        @foreach($cate_home->movie->where('status',1)->take(8) as $key => $movie_home)
                            <article class="col-md-3 col-sm-3 col-xs-6 thumb grid-item post-37606">
                                <div class="halim-item">
                                    <a class="halim-thumb" href="{{route('movie',$movie_home->slug)}}">
                                        <figure><img class="lazy img-responsive"
                                                     src="{{asset('/uploads/movie/'.$movie_home->image)}}"
                                                     alt="{{$movie_home->title}}"
                                                     title="{{$movie_home->title}}"></figure>
                                        <span class="status">
                                            @if($movie_home->resolution == 0)
                                                HD
                                            @elseif($movie_home->resolution == 1)
                                                SD
                                            @elseif($movie_home->resolution == 2)
                                                HDcam
                                            @elseif($movie_home->resolution == 3)
                                                Cam
                                            @elseif($movie_home->resolution == 4)
                                                FullHD
                                            @else
                                                Trailer
                                            @endif
                                        </span><span class="episode">
                                            <i class="fa fa-play" aria-hidden="true"></i>
                                            @if($movie_home->subtitle == 0)
                                             Vietsub

                                            @else
                                                Thuyết minh

                                            @endif
                                        </span>
                                        <div class="icon_overlay"></div>
                                        <div class="halim-post-title-box">
                                            <div class="halim-post-title ">
                                                <p class="entry-title">{{$movie_home->title}}</p>
                                                <p class="original_title">{{$movie_home->name_eng}}</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </article>
                        @endforeach
                    </div>
                </section>

                <div class="clearfix"></div>
            @endforeach
        </main>
        {{--  sidebar  --}}
        @include('client.include.sidebar')
    </div>
@endsection
