<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use JamesDordoy\LaravelVueDatatable\Traits\LaravelVueDatatableTrait;
class ChallengeCategory extends Model
{
    use HasFactory,LaravelVueDatatableTrait;
    protected $table = "challenge_categories";
    protected $fillable = [
        'slug',
        'name',
        'slug',
        'image',
        'description',
    ];
    protected $dataTableColumns = [
        'id' => [
            'searchable' => false,
        ],
        'name' => [
            'searchable' => true,
        ],
        'image' => [
            'searchable' => true,
        ],
    ];
    protected $dataTableRelationships = [
        "hasMany" => [
            'challenges' => [
                "model" => Challenge::class,
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
    public function challenges(){
        return $this->hasMany(Challenge::class,'cate_challen_id');
    }
}
