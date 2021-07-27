<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use JamesDordoy\LaravelVueDatatable\Traits\LaravelVueDatatableTrait;

class Challenge extends Model
{
    use HasFactory,LaravelVueDatatableTrait;
    protected $fillable = [
        'title',
        'slug',
        'description',
        'language',
        'link_figma',
        'image',
        'resources',
        'level',
        'cate_challen_id'
    ];
    protected $dataTableColumns = [
        'id' => [
            'searchable' => false,
        ],
        'title' => [
            'searchable' => true,
        ],
        'language' => [
            'searchable' => true,
        ],
        'level' => [
            'searchable' => true,
        ]
    ];
    protected $dataTableRelationships = [
        "belongsTo" => [
            'category' => [
                "model" => ChallengeCategory::class,
                'foreign_key' => 'cate_challen_id',
                'columns' => [
                    'name' => [
                        'searchable' => true,
                        'orderable' => true,
                    ],
                ],
            ],
        ],
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
