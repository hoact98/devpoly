<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Challenge extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'description',
        'language',
        'link_figma',
        'level',
        'cate_challen_id'
    ];
    public function category()
    {
        return $this->belongsTo(ChallengeCategory::class, 'cate_challen_id');
    }
    public function users()
    {
        return $this->belongsToMany(User::class,'challenge_users','challen_id','user_id');
    }
    public function solutions()
    {
        return $this->hasMany(Solution::class,'solution_id');
    }
}
