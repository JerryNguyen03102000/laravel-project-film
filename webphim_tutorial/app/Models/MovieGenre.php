<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Movie;

class MovieGenre extends Model
{
    use HasFactory;
    public $timestamps=false;
    protected $table = 'movie_genre';

}
