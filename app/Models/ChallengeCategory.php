<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChallengeCategory extends Model
{
    use HasFactory;
    protected $table = "challenge_categories";
    protected $fillable = [
        'name',
        'slug',
        'image',
        'description',
    ];
    public function challenges(){
        return $this->hasMany(Challenge::class,'cate_challen_id');
    }
}
