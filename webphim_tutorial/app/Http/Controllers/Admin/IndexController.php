<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Country;
use App\Models\Genre;
use App\Models\Movie;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function  main(){
        $countCate = Category::all()->count();
        $countCountry = Country::all()->count();
        $countGenre = Genre::all()->count();
        $countMovie = Movie::all()->count();
        return view('admin.manager.dashboard',[
            'title'=>'Trang chủ',
            'countCate'=>$countCate,
            'countCountry'=>$countCountry,
            'countGenre'=>$countGenre,
            'countMovie'=>$countMovie,

        ]);
    }

}
