<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    use HasFactory;
    protected $fillable = ['id','title','slug','description','status'];
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $table = 'genres';
    public function movie(){
        return $this->belongsTo(Movie::class);
    }
}
