<?php

namespace App\Http\Controllers;

use App\Models\Genre;
use Illuminate\Http\Request;

class GenreController extends Controller
{
    public function index()
    {
        $title = 'Danh sách thể loại phim';
        $genre = Genre::orderByDesc('id')->paginate(8);
        return view('admin.genre.list', [
            'title' => $title,
            'genres' => $genre
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.genre.form', [
            'title' => 'Thêm thể loại phim'
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
        // validate request
        $request->validate([
            'title' => 'required|unique:App\Models\genre,title',
            'slug'=>'required',
            'description'=>'required'
        ],
            [
                'title.required'=>'Vui lòng nhập tên thể loại phim',
                'title.unique'=>'Tên thể loại phim đã tồn tại',
                'slug.required'=>'Vui lòng nhập slug phim',
                'description.required'=>'Vui lòng nhập mô tả'

            ]);
        $genre = new Genre();
        $genre->title = $request->title;
        $genre->description = $request->description;
        $genre->slug = $request->slug;
        $genre->status = $request->status;
        $genre->save();
        return redirect()->route('admin.genre.index')->with('success', 'Thêm thể loại thành công');

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
        $genre = Genre::find($id);
        return view('admin.genre.edit',
            [
                'title'=>'Sửa thể loại phim',
                'genre' =>$genre
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
            'title' => 'required|unique:App\Models\genre,title,'.$id,
            'slug'=>'required',
            'description'=>'required'
        ],
            [
                'title.required'=>'Vui lòng nhập tên thể loại phim',
                'title.unique'=>'Tên thể loại phim đã tồn tại',
                'slug.required'=>'Vui lòng nhập slug phim ',
                'description.required'=>'Vui lòng nhập mô tả'

            ]);
        $genre = Genre::find($id);
        $genre->title = $request->title;
        $genre->slug = $request->slug;
        $genre->description = $request->description;
        $genre->status = $request->status;
        $genre->save();
        return redirect()->route('admin.genre.index')->with('success', 'Sửa thể loại phim thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // xóa danh mục
        $genre = Genre::find($id)->delete();
        if($genre){
            return redirect()->route('admin.genre.index')->with('success', 'Xóa thể loại phim thành công');
        }else{
            return redirect()->route('admin.genre.index')->with('error', 'Không thể xóa thể loại phim');
        }

    }
}
