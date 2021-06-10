<?php

namespace App\Http\Controllers;

use App\Models\Role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
     // all roles
     public function index()
     {
        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess get list roles',
            'data' => Role::all(),
        ], 200);
     }
 
     // add role
     public function create(Request $request)
     {
         $role = new Role([
             'name' => $request->name,
         ]);
         $role->save();
 
         return response()->json(['status'=>'success','message'=>'The role successfully added','data'=>$role],201);
     }
 
     // edit role
     public function show($id)
     {
         $role = Role::find($id);
         return response()->json(['status'=>'success','message'=>'Succsess get role','data'=>$role],200);
     }
 
     // update role
     public function update($id, Request $request)
     {
         $role = Role::find($id);
         $role->update($request->all());
 
         return response()->json(['status'=>'success','message'=>'The role successfully updated','data'=>$role],200);
     }
 
     // delete role
     public function delete($id)
     {
         $role = Role::find($id);
         $role->delete();
 
         return response()->json(['status'=>'success','message'=>'The role successfully deleted'],200);
     }
}
