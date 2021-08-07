<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChatMessage extends Model
{
    use HasFactory;
    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:i:s',
    ];
    protected $fillable = [
        'chat_room_id',
        'user_id',
        'message',
        'image',
        'receiver_id',
    ];
    public function room()
    {
        return $this->hasOne('App\Models\ChatRoom', 'id', 'chat_room_id');
    }
    public function user()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }
}