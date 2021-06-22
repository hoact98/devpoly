<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class FeedbackController extends Controller
{
   // all feedbacks
   public function index()
   {
       $feedbacks = Feedback::all();
        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess get list feedback',
            'data' => $feedbacks,
        ], 200);
   }

   // add feedback
   public function create(Request $request)
   {
       $feedback = new Feedback([
           'feedback_content' => $request->feedback_content,
           'user_id' => Auth::id(),  //user logined
           'solution_id' => $request->solution_id,
           'parent_id' => $request->parent_id,
       ]);
       $feedback->save();

       return response()->json(['status'=>'success','message'=>'The feedback successfully added','data'=>$feedback],201);
   }

   // edit feedback
   public function show($id)
   {
       $feedback = Feedback::find($id);
       return response()->json(['status'=>'success','message'=>'get the feedback successfully','data'=>$feedback],200);
   }

   // update feedback
   public function update($id, Request $request)
   {
       $feedback = Feedback::find($id);
       $feedback->update($request->all());

       return response()->json(['status'=>'success','message'=>'The feedback successfully updated','data'=>$feedback],200);
   }

   // delete feedback
   public function delete($id)
   {
       $feedback = Feedback::find($id);
       $feedback->delete();

       return response()->json(['status'=>'success','message'=>'The feedback successfully deleted','data'=>$feedback],200);
   }
}
