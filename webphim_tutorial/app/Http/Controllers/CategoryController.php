<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Danh sách danh mục phim';
        $categories = Category::orderBy('id','DESC')->paginate(4);
        return view('admin.category.list', [
            'title' => $title,
            'categories' => $categories
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category.form', [
            'title' => 'Thêm danh mục phim'
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
            'title' => 'required|unique:App\Models\Category,title',
            'slug'=>'required',
            'description'=>'required'
        ],
            [
                'title.required'=>'Vui lòng nhập tên danh mục phim',
                 'title.unique'=>'Tên danh mục phim đã tồn tại',
                'slug.required'=>'Vui lòng nhập slug phim',
                'description.required'=>'Vui lòng nhập mô tả'

            ]);
        $category = new Category();
        $category->title = $request->title;
        $category->slug = $request->slug;
        $category->description = $request->description;
        $category->status = $request->status;
        $category->save();
        return redirect()->route('admin.category.index')->with('success', 'Thêm danh mục phim thành công');

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
        $category = Category::find($id);
      return view('admin.category.edit',
          [
              'title'=>'Sửa danh mục phim',
              'category' =>$category
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
            'title' => 'required|unique:App\Models\Category,title,'.$id,
            'slug'=>'required',
            'description'=>'required'
        ],
            [
                'title.required'=>'Vui lòng nhập tên danh mục phim',
                'title.unique'=>'Tên danh mục phim đã tồn tại',
                'slug.required'=>'Vui lòng nhập slug phim',
                'description.required'=>'Vui lòng nhập mô tả'

            ]);
        $category = Category::find($id);
        $category->title = $request->title;
        $category->slug = $request->slug;
        $category->description = $request->description;
        $category->status = $request->status;
        $category->save();
        return redirect()->route('admin.category.index')->with('success', 'Sửa danh mục phim thành công');
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
        $category = Category::find($id)->delete();
        if($category){
            return redirect()->route('admin.category.index')->with('success', 'Xóa danh mục phim thành công');
        }else{
            return redirect()->route('admin.category.index')->with('error', 'Không thể xóa danh mục phim');
        }

    }

}
