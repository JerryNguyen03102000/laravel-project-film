<?php

namespace App\Http\Controllers;

use App\Models\Episode;
use App\Models\MovieGenre;
use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Country;
use Illuminate\Support\Facades\File;

class MovieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Danh sách phim';
        $movies = Movie::orderBy('id', 'DESC')->with('category', 'country', 'genre', 'movie_genre')->paginate(15);
        //dd($movies->count());
        return view('admin.movie.list', [
            'title' => $title,
            'movies' => $movies

        ]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Thêm phim';
        $category = Category::all();
        $genre = Genre::all();
        $country = Country::all();
        return view('admin.movie.form', [
            'title' => $title,
            'category' => $category,
            'genre' => $genre,
            'country' => $country,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'title' => 'required|unique:App\Models\Movie,title',
            'slug' => 'required',
            'image' => 'required|image:gif,png,jpeg,jpg',
            'description' => 'required'
        ], [
            'title.required' => 'Vui lòng nhập tên  phim',
            'title.unique' => 'Tên phim đã tồn tại',
            'slug.required' => 'Vui lòng nhập slug phim',
            'image.required' => 'Vui lòng chọn hình ảnh phim',
            'image.image' => 'File upload lên phải là một hình ảnh',
            'description.required' => 'Vui lòng nhập mô tả'
        ]);
        // upload file

        if ($request->hasFile('image')) {
            $image = $request->image;
            $ext = $image->getClientOriginalExtension();
            $newFileName = rand(0, 99999) . '.' . $ext;
            $image->move(public_path('/uploads/movie/'), $newFileName);
        }
        $movie = new Movie();
        $movie->title = $request->title;
        $movie->name_eng = $request->name_eng;
        $movie->thoiluong = $request->thoiluong;
        $movie->trailer = $request->trailer;
        $movie->slug = $request->slug;
        $movie->image = $newFileName;
        $movie->sotap = $request->sotap;
        $movie->description = $request->description;
        $movie->thuocphim = $request->thuocphim;
        $movie->status = $request->status;
        $movie->phim_hot = $request->phim_hot;
        $movie->resolution = $request->resolution;
        $movie->subtitle = $request->subtitle;
        $movie->category_id = $request->category_id;
        $movie->country_id = $request->country_id;
        foreach ($request->genre_id as $genre) {
            $movie->genre_id = $genre[0];
        }
        $movie->save();
        //       thêm nhiều thể loại cho phim
        $movie->movie_genre()->attach($request->genre_id);


        return redirect()->route('admin.movie.index')->with('success', 'Thêm phim thành công');

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $title = 'Sửa phim';
        $category = Category::all();
        $genre = Genre::all();
        $country = Country::all();
        $movie = Movie::find($id);
        $movie_genre = $movie->movie_genre;

//        foreach ($movie_genre as $e){
//            dd($e);
//        }
        return view('admin.movie.edit', [
            'title' => $title,
            'category' => $category,
            'genre' => $genre,
            'country' => $country,
            'movie' => $movie,
            'movie_genre' => $movie_genre
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $request->validate([
            'title' => 'required|unique:App\Models\Movie,title,' . $id,
            'slug' => 'required',
            'image' => 'sometimes|image:gif,png,jpeg,jpg',
            'description' => 'required'
        ], [
            'title.required' => 'Vui lòng nhập tên phim',
            'title.unique' => 'Tên phim đã tồn tại',
            'slug.required' => 'Vui lòng nhập slug phim',
            'image.required' => 'Vui lòng chọn hình ảnh',
            'image.image' => 'File upload lên phải là một hình ảnh',
            'description.required' => 'Vui lòng nhập mô tả'
        ]);
        $movie = Movie::find($id);

        // upload file
        if ($request->hasFile('image')) {
            $oldImage = $movie->image;
            File::delete(public_path('/uploads/movie/' . $oldImage));
            $image = $request->image;
            $ext = $image->getClientOriginalExtension();
            $newFileName = rand(0, 99999) . '.' . $ext;
            $image->move(public_path('/uploads/movie/'), $newFileName);
        } else {
            $newFileName = $movie->image;

        }

        $movie->title = $request->title;
        $movie->name_eng = $request->name_eng;
        $movie->slug = $request->slug;
        $movie->trailer = $request->trailer;
        $movie->sotap = $request->sotap;
        $movie->thoiluong = $request->thoiluong;
        $movie->image = $newFileName;
        $movie->description = $request->description;
        $movie->status = $request->status;
        $movie->thuocphim = $request->thuocphim;
        $movie->phim_hot = $request->phim_hot;
        $movie->resolution = $request->resolution;
        $movie->subtitle = $request->subtitle;
        $movie->category_id = $request->category_id;
        $movie->country_id = $request->country_id;
        foreach ($request->genre_id as $genre) {
            $movie->genre_id = $genre[0];
        }
        $movie->save();
        $movie->movie_genre()->sync($request->genre_id);

        return redirect()->route('admin.movie.index')->with('success', 'Sửa phim thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $movie = Movie::find($id);
        if (!empty($movie->image)) {
            File::delete(public_path('/uploads/movie/' . $movie->image));
        }
        MovieGenre::whereIn('movie_id', [$movie->id])->delete();
        $episodes = Episode::where('movie_id', $movie->id)->get();
        if (count($episodes) > 0) {
            foreach ($episodes as $episode) {
                $episode->delete();
            }
        }

        $movie->delete();
        return redirect()->route('admin.movie.index')->with('success', 'Xóa phim thành công');
    }

    public function search(Request $request)
    {
        $keyword = $request->search;
        $movie_search = Movie::with('category', 'genre', 'country', 'movie_genre')
            ->where('title', 'like', '%' . $keyword . '%')->get();

        $token = csrf_token();
        $html = '';
        $msg = 'Bạn có muốn xóa không';
        if (count($movie_search) > 0) {

            foreach ($movie_search as $key => $movie) {

                switch ($movie->status) {
                    case 0:
                        $status = "<button class='btn-danger btn btn-sm'> Không hiển thị</button>";
                        break;
                    case 1:
                        $status = "<button class='btn-success btn btn-sm'> Hiển thị</button>";
                        break;


                }
                switch ($movie->phim_hot) {
                    case 0:
                        $phim_hot = "<button class='btn-danger btn btn-sm'> Không </button>";
                        break;
                    case 1:
                        $phim_hot = "<button class='btn-success btn btn-sm'> Có</button>";
                        break;


                }
                switch ($movie->resolution) {
                    case 0:
                        $resolution = "<button class='btn-success btn btn-sm'> HD </button>";
                        break;
                    case 1:
                        $resolution = "<button class='btn-success btn btn-sm'> SD</button>";
                        break;
                    case 2:
                        $resolution = "<button class='btn-success btn btn-sm'> HDcam</button>";
                        break;
                    case 3:
                        $resolution = "<button class='btn-success btn btn-sm'> Cam</button>";
                        break;
                    case 4:
                        $resolution = "<button class='btn-success btn btn-sm'> FullHD</button>";
                        break;


                }
                switch ($movie->subtitle) {
                    case 0:
                        $subtitle = "<button class='btn-success btn btn-sm'> Thuyết minh  </button>";
                        break;
                    case 1:
                        $subtitle = "<button class='btn-success btn btn-sm'> Phụ đề</button>";
                        break;


                }
                $html .= '<tr>
               <td>' . $key + 1 . '</td>
               <td>' . $movie->title . '</td>
  <td>' . $movie->slug . '</td>
    <td>' . $movie->thoiluong . '</td>
                <td><img style="border-radius: 0;width:120px;height: 170px" src="' . asset('uploads/movie/' . $movie->image) . '"></td>
              <td>' . $movie->category->title . '</td>';

                 $html .= '<td>';
                 foreach ($movie->movie_genre as $genre){
                    $html.='<span class="badge badge-dark">'.$genre->title.'</span>'.'<br>';
                 }
                $html .= '</td>';

                $html .= '
                  <td>' . $movie->country->title . '</td>
                    <td>' . $movie->sotap . '</td>
                   <td>' . $phim_hot . '</td>
                    <td>' . $movie->thuocphim . '</td>
                    <td>' . $resolution . '</td>
                        <td>' . $subtitle . '</td>
                   <td>' . $status . '</td>
                      <td>' . $movie->updated_at . '</td>
                     <td>
     <form method="post" onsubmit="confirm()"
                                                      action="' . route('admin.movie.destroy', $movie->id) . '">
                                                 <input type="hidden" name="_token" value="' . $token . '" />

                                                 <input type="hidden" name="_method" value="DELETE" />

                                                    <button type="submit" class="btn btn-danger"> Xóa</button>
                                                </form>
                       <a href="' . route('admin.movie.edit', $movie->id) . '" class="btn btn-warning">Sửa</a>
                       </td>


</tr>';
            }
        } else {
            $html = '<tr><td colspan="17">Không tìm thấy kết quả</td></tr>';
        }
        return $html;
    }

    public function update_year(Request $request)
    {
        $movie = Movie::find($request->id_film);
        $movie->year = $request->year;
        $movie->save();
        return redirect()->back();

    }

    public function update_season(Request $request)
    {
        $movie = Movie::find($request->id_film);
        $movie->season = $request->season;
        $movie->save();
        return redirect()->back();

    }
}
