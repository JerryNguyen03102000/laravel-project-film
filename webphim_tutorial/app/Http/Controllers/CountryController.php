<?php

namespace App\Http\Controllers;

use App\Models\Country;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    public function index()
    {
        $title = 'Danh sách quốc gia';
        $country = Country::orderByDesc('id')->paginate(4);
        return view('admin.country.list', [
            'title' => $title,
            'countries' => $country
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.country.form', [
            'title' => 'Thêm quốc gia'
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
            'title' => 'required|unique:App\Models\country,title',
            'description'=>'required',
            'slug'=>'required'
        ],
            [
                'title.required'=>'Vui lòng nhập tên quốc gia',
                'title.unique'=>'Tên quốc gia đã tồn tại',
                'description.required'=>'Vui lòng nhập mô tả',
                'slug.required'=>'Vui lòng nhập slug phim'

            ]);
        $country = new Country();
        $country->title = $request->title;
        $country->slug = $request->slug;
        $country->description = $request->description;
        $country->status = $request->status;
        $country->save();
        return redirect()->route('admin.country.index')->with('success', 'Thêm quốc gia thành công');

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
        $country = Country::find($id);
        return view('admin.country.edit',
            [
                'title'=>'Sửa quốc gia',
                'country' =>$country
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
            'title' => 'required|unique:App\Models\country,title,'.$id,
            'description'=>'required',
            'slug'=>'required'
        ],
            [
                'title.required'=>'Vui lòng nhập tên quốc gí',
                'title.unique'=>'Tên quốc gia đã tồn tại',
                'description.required'=>'Vui lòng nhập mô tả',
                'slug.required'=>'Vui lòng nhập slug phim',

            ]);
        $country = Country::find($id);
        $country->title = $request->title;
        $country->description = $request->description;
        $country->status = $request->status;
        $country->save();
        return redirect()->route('admin.country.index')->with('success', 'Sửa quốc gia  thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $country = Country::find($id)->delete();
        if($country){
            return redirect()->route('admin.country.index')->with('success', 'Xóa quốc gia thành công');
        }else{
            return redirect()->route('admin.country.index')->with('error', 'Không thể xóa quốc gia phim');
        }

    }
}
