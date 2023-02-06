@extends('client.layout')
@section('content')
    <div class="row container" id="wrapper">
        <div class="halim-panel-filter">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="yoast_breadcrumb hidden-xs"><span><span><a
                                        href="{{route('category',['slug'=>$movie->category->slug])}}">{{$movie->category->title}}</a> » <span><a
                                            href="{{route('country',['slug'=>$movie->country->slug])}}">{{$movie->country->title}}</a> » <span
                                            class="breadcrumb_last" aria-current="page">
                            {{$movie->title}}</span></span></span></span>
                        </div>
                    </div>
                </div>
            </div>
            <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
                <div class="ajax"></div>
            </div>
        </div>
        <div id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
            <section id="content" class="test">
                <div class="clearfix wrap-content">
                    <div class="iframe_phim">
                        <style>
                            .iframe_phim iframe {
                                width: 100%;
                                height: 500px;
                            }
                        </style>
                            {!!  $episode->linkphim !!}
                    </div>

                    <div class="button-watch">
                        <ul class="halim-social-plugin col-xs-4 hidden-xs">
                            <li class="fb-like" data-href="" data-layout="button_count" data-action="like"
                                data-size="small" data-show-faces="true" data-share="true"></li>
                        </ul>
                        <ul class="col-xs-12 col-md-8">
                            <div id="autonext" class="btn-cs autonext">
                                <i class="icon-autonext-sm"></i>
                                <span><i class="fa-sharp fa-solid fa-forward"></i> Autonext: <span id="autonext-status">On</span></span>
                            </div>
                            <div id="explayer"  class="hidden-xs fullscreenButton"><i class="fa-solid fa-expand"></i>
                                Expand
                            </div>
                            <div id="toggle-light"><i class="fa-sharp fa-solid fa-lightbulb"></i>
                                Light Off
                            </div>
                            <div id="report" class="halim-switch"><i class="fa-solid fa-bell-concierge"></i> Report</div>
                            <div class="luotxem"><i class="fa-solid fa-eye"></i>
                                <span>1K</span> lượt xem
                            </div>
                            <div class="luotxem">
                                <a class="visible-xs-inline" data-toggle="collapse" href="#moretool"
                                   aria-expanded="false" aria-controls="moretool"><i class="hl-forward"></i> Share</a>
                            </div>
                        </ul>
                    </div>
                    <div class="collapse" id="moretool">
                        <ul class="nav nav-pills x-nav-justified">
                            <li class="fb-like" data-href="" data-layout="button_count" data-action="like"
                                data-size="small" data-show-faces="true" data-share="true"></li>
                            <div class="fb-save" data-uri="" data-size="small"></div>
                        </ul>
                    </div>

                    <div class="clearfix"></div>
                    <div class="clearfix"></div>
                    <div class="title-block">
                        <a href="javascript:;" data-toggle="tooltip" title="Add to bookmark">
                            <div id="bookmark" class="bookmark-img-animation primary_ribbon" data-id="37976">
                                <div class="halim-pulse-ring"></div>
                            </div>
                        </a>
                        <div class="title-wrapper-xem full">
                            <h1 class="entry-title"><a href="#" title="{{$movie->title}}"
                                                       class="tl">{{$movie->title}}</a></h1>
                        </div>
                    </div>
                    <div class="entry-content htmlwrap clearfix collapse" id="expand-post-content">
                        <article id="post-37976" class="item-content post-37976"></article>
                    </div>
                    <div class="clearfix"></div>
                    <div class="text-center">
                        <div id="halim-ajax-list-server"></div>
                    </div>
                    <div id="halim-list-server">
                        <ul class="nav nav-tabs" role="tablist">
                            @if($movie->resolution == 0)
                                <li role="presentation" class="active server-1"><a href="#server-0"
                                                                                   aria-controls="server-0"
                                                                                   role="tab" data-toggle="tab"><i
                                            class="hl-server"></i> HD</a></li>
                            @elseif($movie->resolution == 1)
                                <li role="presentation" class="active server-1"><a href="#server-0"
                                                                                   aria-controls="server-0"
                                                                                   role="tab" data-toggle="tab"><i
                                            class="hl-server"></i> SD</a></li>
                            @elseif($movie->resolution == 2)
                                <li role="presentation" class="active server-1"><a href="#server-0"
                                                                                   aria-controls="server-0"
                                                                                   role="tab" data-toggle="tab"><i
                                            class="hl-server"></i> HDcam</a></li>
                            @elseif($movie->resolution == 3)
                                <li role="presentation" class="active server-1"><a href="#server-0"
                                                                                   aria-controls="server-0"
                                                                                   role="tab" data-toggle="tab"><i
                                            class="hl-server"></i> Cam</a></li>
                            @elseif($movie->resolution == 4)
                                <li role="presentation" class="active server-1"><a href="#server-0"
                                                                                   aria-controls="server-0"
                                                                                   role="tab" data-toggle="tab"><i
                                            class="hl-server"></i>FullHD</a></li>
                            @else
                                <li role="presentation" class="active server-1"><a href="#server-0"
                                                                                   aria-controls="server-0"
                                                                                   role="tab" data-toggle="tab"><i
                                            class="hl-server"></i> Trailer</a></li>
                            @endif

                        </ul>
                        @if($movie->thuocphim == 'phimbo')
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active server-1" id="server-0">
                                <div class="halim-server">
                                    <ul class="halim-list-eps">
                                        @foreach($movie->episode as $key => $episode)
                                            <a href="{{route('watch',['slug'=>$movie->slug,'tap-phim'=>$episode->episode])}}">
                                                <li class="halim-episode"><span class="
                                    halim-btn halim-btn-2 {{$tapphim == $episode->episode?'active':''}} halim-info-1-1 box-shadow"
                                                                                data-post-id="37976"
                                                                                data-server="1"
                                                                                data-episode="{{$episode->episode}}"
                                                                                data-position="first"
                                                                                data-h1="{{$movie->title}} - tập {{$episode->episode}}">{{$episode->episode}}</span>
                                                </li>
                                            </a>
                                        @endforeach


                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                            @endif
                    </div>
                    <div class="clearfix"></div>
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
                                              Vietsub

                                            @else
                                                Thuyết minh

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
                        jQuery(document).ready(function ($) {
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

        </div>
        @include('client.include.sidebar')
    </div>
@endsection
