@extends('client.layout')
@section('content')
    <div class="row container" id="wrapper">
        <div class="halim-panel-filter">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="yoast_breadcrumb hidden-xs"><span><span><a href="">{{$genre_slug->title}}</a></span></span></div>
                    </div>
                </div>
            </div>
            <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
                <div class="ajax"></div>
            </div>
        </div>
        <main id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
            <section>
                <div class="section-bar clearfix">
                    <h1 class="section-title"><span>{{$genre_slug->title}}</span></h1>
                </div>
                <div class="halim_box">
                    @foreach($movies as $key=>$movie)
                        <article class="col-md-3 col-sm-3 col-xs-6 thumb grid-item post-37606">
                            <div class="halim-item">
                                <a class="halim-thumb" href="{{route('movie',$movie->slug)}}">
                                    <figure><img class="lazy img-responsive"
                                                 src="{{asset('/uploads/movie/'.$movie->image)}}"
                                                 alt="{{$movie->title}}"
                                                 title="{{$movie->title}}"></figure>
                                    <span class="status">
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
                                    </span><span class="episode"><i class="fa fa-play" aria-hidden="true"></i>
                                      @if($movie->subtitle == 0)
                                          Viétub

                                        @else
                                       Thuyết minh

                                        @endif
                                    </span>
                                    <div class="icon_overlay"></div>
                                    <div class="halim-post-title-box">
                                        <div class="halim-post-title ">
                                            <p class="entry-title">{{$movie->title}}</p>
                                            <p class="original_title">{{$movie->name_eng}}</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </article>
                    @endforeach

                </div>
                <div class="clearfix"></div>
                @if(count($movies)>0)
                <div class="text-center">
                    {!! $movies->links('pagination::bootstrap-4') !!}
                </div>
                @endif
            </section>
        </main>
        @include('client.include.sidebar')
    </div>
@endsection
