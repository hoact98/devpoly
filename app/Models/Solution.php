<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use GoldSpecDigital\LaravelEloquentUUID\Database\Eloquent\Uuid;

class Solution extends Model
{
    use HasFactory,Uuid;
    protected $keyType = 'string';
    public $incrementing = false;
    protected $guarded = [];
    protected $fillable = [
        'title',
        'description',
        'link_github',
        'demo_url',
        'user_id',
        'challen_id'     
    ];
    public function users()
    {
        return $this->belongsToMany(User::class,'solution_users','solution_id','user_id');
    }
    public function feedbacks()
    {
        return $this->hasMany(Feedback::class,'solution_id');
    }
    public function challenges()
    {
    return $this->belongsTo(Challenge::class, 'challen_id');
    }
}
