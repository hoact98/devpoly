<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Feedbacks extends Model
{
    use HasFactory;
    protected $fillable = [
        'feedback_content',
        'user_id',
        'solution_id',
        'parent_id'
    ];
    public function solutions()
    {
    return $this->belongsTo(Solution::class, 'solution_id');
    }
    public function users()
    {
    return $this->belongsTo(User::class, 'user_id');
    }
}
