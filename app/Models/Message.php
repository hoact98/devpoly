<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    use HasFactory;
    protected $table = "messages";
    protected $fillable = [
        'from_user_id',
        'to_user_id',
        'type',
        'file_format',
        'message',
        'date',
        'time',
        'ip'
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }
}