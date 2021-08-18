<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use JamesDordoy\LaravelVueDatatable\Traits\LaravelVueDatatableTrait;

class Feedback extends Model
{
    use HasFactory,LaravelVueDatatableTrait;
    protected $table = 'feedbacks';
    protected $fillable = [
        'feedback_content',
        'user_id',
        'solution_id',
        'parent_id'
    ];
    protected $dataTableColumns = [
        'id' => [
            'searchable' => true,
        ],
        'feedback_content' => [
            'searchable' => true,
        ],
        'is_approved' => [
            'searchable' => true,
        ]
    ];
    protected $dataTableRelationships = [
        "belongsTo" => [
            'solutions' => [
                "model" => Solution::class,
                'foreign_key' => 'solution_id',
                'columns' => [
                    'title' => [
                        'searchable' => true,
                        'orderable' => true,
                    ],
                ],
            ],
            'users' => [
                "model" => User::class,
                'foreign_key' => 'user_id',
                'columns' => [
                    'name' => [
                        'searchable' => true,
                        'orderable' => true,
                    ],
                ],
            ],
        ],
    ];
    public function solutions()
    {
    return $this->belongsTo(Solution::class, 'solution_id');
    }
    public function users()
    {
    return $this->belongsTo(User::class, 'user_id');
    }
    public function upvote()
    {
        return $this->hasMany(UpvoteFeedback::class,'feedback_id');
    }
}
