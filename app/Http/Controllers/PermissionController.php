<?php

namespace App\Http\Controllers;

use App\Http\Requests\SavePermissionRequest;
use App\Models\Permission;
use Illuminate\Http\Request;

class PermissionController extends Controller
{
    // all permissions
    public function index()
    {
       return response()->json([
           'status'=>'success',
           'messege' => 'Succsess get list permissions',
           'data' => Permission::all(),
       ], 200);
    }

    // add permission
    public function create(SavePermissionRequest $request)
    {
        $permission = new Permission([
            'name' => $request->name,
            'guard_name'=> 'web'
        ]);
        $permission->save();

        return response()->json(['status'=>'success','message'=>'The permission successfully added','data'=>$permission],201);
    }

    // edit permission
    public function show($id)
    {
        $permission = Permission::find($id);
        return response()->json(['status'=>'success','message'=>'Succsess get permission','data'=>$permission],200);
    }

    // update permission
    public function update($id, SavePermissionRequest $request)
    {
        $permission = Permission::find($id);
        $permission->update($request->all());

        return response()->json(['status'=>'success','message'=>'The permission successfully updated','data'=>$permission],200);
    }

    // delete permission
    public function delete($id)
    {
        $permission = Permission::find($id);
        $permission->delete();

        return response()->json(['status'=>'success','message'=>'The permission successfully deleted'],200);
    }
}
