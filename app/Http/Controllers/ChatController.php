<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ChatMessage;
use App\Models\ChatRoom;
use Illuminate\Support\Facades\Auth;
use App\Events\NewChatMessage;
use Illuminate\Support\Facades\Broadcast;

class ChatController extends Controller
{
    //
    public function rooms(Request $request)
    {
        return response()->json([
            'status' => 'success',
            'messege' => 'Succsess get list rooms',
            'data' => ChatRoom::all(),
        ], 200);
    }
    public function messages(Request $request, $roomId)
    {
        $ChatMessage = ChatMessage::where('chat_room_id', $roomId)
            ->with('user')
            ->orderBy('created_at', 'DESC')
            ->get();
        return response()->json([
            'status' => 'success',
            'messege' => 'Succsess get messeges',
            'data' => $ChatMessage,
        ], 200);
    }
    public function newMessage(Request $request, $roomId)
    {
        $newMessage = new ChatMessage;
        $newMessage->user_id  = auth('api')->user()->id;
        $newMessage->chat_room_id = $roomId;
        $newMessage->message = $request->message;
        $newMessage->save();

        broadcast(new NewChatMessage($newMessage))->toOthers();
        return response()->json([
            'status' => 'success',
            'messege' => 'Succsess get new message',
            'data' => $newMessage,
        ], 200);
    }
}
