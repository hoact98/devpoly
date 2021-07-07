<?php

namespace App\Http\Controllers;

use App\Models\Message as ModelsMessage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function fetch()
    {
        return ModelsMessage::with('users')->get();
    }

    public function sendMessage(Request $request)
    {
        $user = Auth::user();

        $message = $user->messages()->create([
            'message' => $request->input('message')
        ]);
        return ['status' => 'Message sent!'];
    }
}
