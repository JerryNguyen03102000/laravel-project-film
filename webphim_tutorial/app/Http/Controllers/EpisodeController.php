<?php

namespace App\Http\Controllers;

use App\Models\Episode;
use App\Models\Movie;
use Illuminate\Http\Request;

class EpisodeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Danh sách tập phim';
        $list_episode = Episode::with('movie')->orderBy('movie_id', 'DESC')->paginate(15);

        return view('admin.episode.list',
            [
                'title' => $title,
                'list_episode' => $list_episode
            ]);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Thêm tập phim';
        $list_movie = Movie::select('id', 'title', 'thuocphim')->where('status', 1)->orderBy('id', 'DESC')->get();
        return view('admin.episode.form',
            [
                'movies' => $list_movie,
                'title' => $title
            ]
        );
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
            'movie_id' => 'required',
            'linkphim' => 'required',
            'episode' => 'required',
        ], [
            'movie_id.required' => 'Vui lòng chọn tên phim',
            'linkphim.required' => 'Vui lòng nhập link phim',
            'episode.required' => 'Vui lòng nhập số tập ',

        ]);
        $episode = new Episode();
        $episode->movie_id = $request->movie_id;
        $episode->linkphim = $request->linkphim;
        $episode->episode = $request->episode;
        $episode->status = $request->status;
        $episode->save();
        return redirect()->route('admin.episode.index')->with('success', 'Thêm tập phim thành công');
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

        $title = 'Sửa tập phim';
        $episode = Episode::find($id);
        $list_movie = Movie::select('id', 'title')->where('status', 1)->orderBy('id', 'DESC')->get();
        return view('admin.episode.edit',
            [
                'episode' => $episode,
                'title' => $title,
                'movies' => $list_movie
            ]
        );
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
            'linkphim' => 'required'
        ], [
            'linkphim.required' => 'Vui lòng nhập link phim'
        ]);
        $episode = Episode::find($id);
        $episode->movie_id = $request->movie_id;
        $episode->linkphim = $request->linkphim;
        $episode->episode = $request->episode;
        $episode->status = $request->status;
        $episode->save();
        return redirect()->route('admin.episode.index')->with('success', 'Sửa tập phim thành công');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
            $movie = Episode::find($id)->delete();
            return redirect()->route('admin.episode.index')->with('success', 'Xóa phim thành công');

    }

    public function select_movie(Request $request)
    {
// lấy ra phim theo id truyền lên
        $id = $request->id;
        $movie_by_id = Movie::find($id);
        $html = '<option value="">-- Chọn tập phim --</option>';
        if ($movie_by_id->thuocphim == 'phimbo') {
            for ($i = 1; $i <= $movie_by_id->sotap; $i++) {
                $html .= '<option value="' . $i . '">' . $i . '</option>';
            }
        }else{
            $html .= '<option value="1">1</option>
         ';
        }
        return $html;
    }
}
