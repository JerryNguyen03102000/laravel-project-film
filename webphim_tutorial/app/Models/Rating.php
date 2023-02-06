<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'rating';
    protected $fillable = ['id','title','description','status','movie_id','genre_id','movie_id','phim_hot'];
    protected $primaryKey = 'id';
}
