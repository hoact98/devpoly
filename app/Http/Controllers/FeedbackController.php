<?php

namespace App\Http\Controllers;

use App\Models\Feedbacks;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
   // all feedbacks
   public function index()
   {
       $feedbacks = Feedbacks::all()->toArray();
       return array_reverse($feedbacks);
   }

   // add feedback
   public function create(Request $request)
   {
       $feedback = new Feedbacks([
           'feedback_content' => $request->feedback_content,
           'user_id' => $request->user_id,
           'solution_id' => $request->solution_id,
           'parent_id' => $request->parent_id,
       ]);
       $feedback->save();

       return response()->json(['status'=>'success','message'=>'The feedback successfully added','data'=>$feedback]);
   }

   // edit feedback
   public function show($id)
   {
       $feedback = Feedbacks::find($id);
       return response()->json($feedback);
   }

   // update feedback
   public function update($id, Request $request)
   {
       $feedback = Feedbacks::find($id);
       $feedback->update($request->all());

       return response()->json(['status'=>'success','message'=>'The feedback successfully updated','data'=>$feedback]);
   }

   // delete feedback
   public function delete($id)
   {
       $feedback = Feedbacks::find($id);
       $feedback->delete();

       return response()->json('The feedback successfully deleted');
   }
}
