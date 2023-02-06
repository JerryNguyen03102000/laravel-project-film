<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $fillable = ['id','title','slug','description','status'];
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $table = 'categories';
    public function  movie(){
        return $this->hasMany(Movie::class)->orderBy('id','DESC');
    }
}
