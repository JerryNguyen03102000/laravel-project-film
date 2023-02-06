<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Episode extends Model
{
    use HasFactory;
    protected $fillable = ['id','movie_id','linkphim','episode'];
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $table = 'episodes';
    public function movie(){
        return $this->belongsTo(Movie::class,'movie_id','id');
    }
}
