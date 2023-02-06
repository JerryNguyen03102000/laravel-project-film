<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Country;
use App\Models\Movie;
use App\Models\Episode;
use App\Models\MovieGenre;

class IndexController extends Controller
{
    public function index()
    {
        $title = 'Phim Hay | Phim Mới | Phim HD Vietsub | Xem Phim Online | Shopphimhay';
        $phim_hot = Movie::where('phim_hot', 1)->where('status', 1)->orderBy('id', 'DESC')->get();
        $phimhot_sidebar = Movie::where('phim_hot', 1)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $phimsapchieu = Movie::where('resolution', 5)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $category = Category::where('status', 1)->orderBy('id', 'DESC')->get();
        $genre = Genre::where('status', 1)->orderBy('id', 'DESC')->get();
        $country = Country::where('status', 1)->orderBy('id', 'DESC')->get();
        $category_home = Category::with('movie')->where('status', 1)
            ->orderBy('id', 'DESC')->get();
        return view('client.pages.home', [
            'title'=>$title,
            'categories' => $category,
            'genres' => $genre,
            'countries' => $country,
            'category_home' => $category_home,
            'phim_hot' => $phim_hot,
            'phimhot_sidebar' => $phimhot_sidebar,
            'phimsapchieu' => $phimsapchieu,

        ]);
    }

    public function category($slug)
    {

        $category = Category::where('status', 1)->orderBy('id', 'DESC')->get();

        $genre = Genre::where('status', 1)->orderBy('id', 'DESC')->get();
        $country = Country::where('status', 1)->orderBy('id', 'DESC')->get();
        $cate_slug = Category::where('slug', $slug)->first();
        $title = $cate_slug->title;
        $movie = Movie::where('category_id', $cate_slug->id)->where('status', 1)->orderBy('id', 'DESC')->paginate(20);
        $phimhot_sidebar = Movie::where('phim_hot', 1)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $phimsapchieu = Movie::where('resolution', 5)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        return view('client.pages.category', [
            'title'=>$title,
            'categories' => $category,
            'genres' => $genre,
            'countries' => $country,
            'cate_slug' => $cate_slug,
            'movies' => $movie,
            'phimhot_sidebar' => $phimhot_sidebar,
            'phimsapchieu' => $phimsapchieu,
        ]);
    }

    public function genre($slug)
    {
        $category = Category::where('status', 1)->orderBy('id', 'DESC')->get();
        $genre = Genre::where('status', 1)->orderBy('id', 'DESC')->get();
        $country = Country::where('status', 1)->orderBy('id', 'DESC')->get();
        $genre_slug = Genre::where('slug', $slug)->first();
        $title =  $genre_slug->title;
        $phimhot_sidebar = Movie::where('phim_hot', 1)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $phimsapchieu = Movie::where('resolution', 5)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
//       lấy ra danh sách phim thông qua chi tiết thể loại;

        $movie_genre = MovieGenre::where('genre_id', $genre_slug->id)->get();
        if(count($movie_genre)>0){
            foreach ($movie_genre as $value) {
                $many_genre[] = $value->movie_id;
            }

            $movie = Movie::whereIn('id', $many_genre)->where('status', 1)->orderBy('id', 'DESC')->paginate(20);
        }else{
            $movie = [];
        }

        return view('client.pages.genre', [
            'title'=>$title,
            'categories' => $category,
            'genres' => $genre,
            'countries' => $country,
            'genre_slug' => $genre_slug,
            'movies' => $movie,
            'phimhot_sidebar' => $phimhot_sidebar,
            'phimsapchieu' => $phimsapchieu,
        ]);
    }

    public function country($slug)
    {
        $category = Category::where('status', 1)->orderBy('id', 'DESC')->get();
        $genre = Genre::where('status', 1)->orderBy('id', 'DESC')->get();
        $country = Country::where('status', 1)->orderBy('id', 'DESC')->get();
        $country_slug = Country::where('slug', $slug)->first();
        $title = $country_slug->title;
        $movie = Movie::where('country_id', $country_slug->id)->where('status', 1)->orderBy('id', 'DESC')->paginate(40);
        $phimhot_sidebar = Movie::where('phim_hot', 1)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $phimsapchieu = Movie::where('resolution', 5)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        return view('client.pages.country', [
            'title'=>$title,
            'categories' => $category,
            'genres' => $genre,
            'countries' => $country,
            'country_slug' => $country_slug,
            'movies' => $movie,
            'phimhot_sidebar' => $phimhot_sidebar,
            'phimsapchieu' => $phimsapchieu,
        ]);
    }

    public function movie($slug)
    {
        $category = Category::where('status', 1)->orderBy('id', 'DESC')->get();
        $genre = Genre::where('status', 1)->orderBy('id', 'DESC')->get();
        $country = Country::where('status', 1)->orderBy('id', 'DESC')->get();
        $movie = Movie::with('category', 'country', 'genre', 'movie_genre')->where('slug', $slug)
            ->where('status', 1)->first();
        $title = $movie->title;
//        lấy tập đầu của bộ phim
        $episode_tapdau = Episode::with('movie')->where('status', 1)
            ->where('movie_id', $movie->id)->orderBy('episode', 'ASC')->first();

        // lấy 3 tập phim mới nhất
        $episode = Episode::where('movie_id', $movie->id)->with('movie')->orderBy('episode', 'DESC')->where('status', 1)->limit(3)->get();
        $episode_current_count = Episode::where('movie_id', $movie->id)->orderBy('episode', 'DESC')->where('status', 1)->count();
        // lấy tổng tập phim đã thêm
        $movie_related = Movie::where('status', 1)->where('category_id', $movie->category_id)
            ->whereNotIn('id', [$movie->id])->inRandomOrder()->get();
        $phimhot_sidebar = Movie::where('phim_hot', 1)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $phimsapchieu = Movie::where('resolution', 5)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();

        return view('client.pages.movie', [
            'title'=>$title,
            'categories' => $category,
            'genres' => $genre,
            'countries' => $country,
            'movie' => $movie,
            'movie_relateds' => $movie_related,
            'phimhot_sidebar' => $phimhot_sidebar,
            'phimsapchieu' => $phimsapchieu,
            'episode' => $episode,
            'episode_tapdau' => $episode_tapdau,
            'episode_current_count' => $episode_current_count

        ]);
    }

    public function watch(Request $request, $slug)
    {
        $tapphim = $request->input('tap-phim');

        $category = Category::where('status', 1)->orderBy('id', 'DESC')->get();
        $genre = Genre::where('status', 1)->orderBy('id', 'DESC')->get();
        $phimhot_sidebar = Movie::where('phim_hot', 1)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $phimsapchieu = Movie::where('resolution', 5)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $country = Country::where('status', 1)->orderBy('id', 'DESC')->get();
        $movie = Movie::with('category', 'country', 'genre', 'movie_genre', 'episode')->where('slug', $slug)
            ->where('status', 1)->first();
        $title = $movie->title;
        $episode = Episode::where('movie_id', $movie->id)->where('episode', $tapphim)->first();
        $movie_related = Movie::where('status', 1)->where('category_id', $movie->category_id)
            ->whereNotIn('id', [$movie->id])->inRandomOrder()->get();
        return view('client.pages.watch', [
            'title'=>$title,
            'categories' => $category,
            'genres' => $genre,
            'countries' => $country,
            'phimhot_sidebar' => $phimhot_sidebar,
            'phimsapchieu' => $phimsapchieu,
            'movie' => $movie,
            'episode' => $episode,
            'tapphim' => $tapphim,
            'movie_relateds' => $movie_related,
        ]);
    }

//    public function episode()
//    {
//        return view('client.pages.episode');
//    }

    public function year($year)
    {
        // hiển thị số phim qua từng năm
        $category = Category::where('status', 1)->orderBy('id', 'DESC')->get();
        $genre = Genre::where('status', 1)->orderBy('id', 'DESC')->get();
        $country = Country::where('status', 1)->orderBy('id', 'DESC')->get();
        $movie = Movie::where('year', $year)->where('status', 1)->orderBy('id', 'DESC')->paginate(40);
        $phimhot_sidebar = Movie::where('phim_hot', 1)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $phimsapchieu = Movie::where('resolution', 5)->where('status', 1)->orderBy('id', 'DESC')->limit('6')->get();
        $year = $year;
        $title = $year;
        return view('client.pages.year', [
            'title'=>$title,
            'categories' => $category,
            'genres' => $genre,
            'countries' => $country,
            'year' => $year,
            'movies' => $movie,
            'phimhot_sidebar' => $phimhot_sidebar,
            'phimsapchieu' => $phimsapchieu,

        ]);
    }

    public function search(Request $request)
    {
        $keyword = $request->search;
        if ($keyword == '') {
            die();
        }
        $movie_search = Movie::where('status', 1)->where('title', 'LIKE', '%' . $keyword . '%')->orderBy('id', 'DESC')->get();
//        dd(count($movie_search));
        $html = '';
        if (count($movie_search) > 0) {
            foreach ($movie_search as $search) {
                $html .= '
 <a href="' . route('movie', $search->slug) . '">
    <li class="list-group-item result-item">
    <img src="' . asset('uploads/movie/' . $search->image) . '" width="100" class="" />
        <div style="flex-direction: column; margin-left: 2px;margin-top: 20px">
           <h4 width="40%">' . $search->title . '</h4>
                <span style="display: -webkit-box; max-height: 8.2rem; -webkit-box-orient: vertical; overflow: hidden; text-overflow: ellipsis; white-space: normal; -webkit-line-clamp: 5; line-height: 1.6rem;" class="text-muted">| ' . $search->name_eng . '

          </span>
           </div>

    </li>
      </a>

     ';
            }
        } else {
            $html .= '
            <span>Không tìm thấy kết quả<span>
            ';
        }

        return $html;

    }

}

