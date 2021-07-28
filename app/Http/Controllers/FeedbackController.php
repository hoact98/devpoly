<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use JamesDordoy\LaravelVueDatatable\Http\Resources\DataTableCollectionResource;

class FeedbackController extends Controller
{
   // all feedbacks
   public function feedbacks()
   {
       $feedbacks = Feedback::all();
       $feedbacks->load('solutions');
       $feedbacks->load('users');
        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess get list feedback',
            'data' => $feedbacks,
        ], 200);
   }
   
   public function index(Request $request)
   {   
       $query = Feedback::eloquentQuery(
           $request->input('column'),
           $request->input('dir'),
           $request->input('search'),
           [
               "solutions","users"
           ],
          
       );
       $data = $query->paginate($request->input('length'));
       return new DataTableCollectionResource($data);
   }
   // add feedback
   public function create(Request $request)
   {
    $rule= [
        'feedback_content' => 'required|min:2',
      ];
      $messages = [
          'feedback_content.min' => "Ít nhất có 2 ký tự",
          'feedback_content.required' => "Nhập nội dung",
      ];
 
      $validator =  Validator::make($request->all(),$rule,$messages);
        if ($validator->fails()) { 
          return response()->json(['errors'=>$validator->errors()],422);
        }
       $parent_id = 0;
       if(isset($request->parent_id)){
        $parent_id = $request->parent_id;
       }
       $feedback = new Feedback([
           'feedback_content' => $request->feedback_content,
           'user_id' => Auth::id(),  //user logined
           'solution_id' => $request->solution_id,
           'parent_id' => $parent_id,
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
   // update feedback
   public function updateApproved($id)
   {
       $feedback = Feedback::find($id);
       $feedback->is_approved=1;
       $feedback->save();

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
