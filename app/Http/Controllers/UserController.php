<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveUserRequest;
use App\Models\InformationUser;
use App\Models\ModelHasRole;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
   /**
     * Get authenticated user.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function current(Request $request)
    {
        return response()->json($request->user());
    }

    // all users
    public function index()
    {
        $users= User::all();
        $users->load('information');
        $users->load('roles');
        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess get list users',
            'data' => $users,
        ], 200);
    }

    // add user -> add user_role
    public function create(SaveUserRequest $request)
    {       
        $this->validate($request, [
            'password' => ['required','min:6'],
        ]);
        $imageName='';
        if($request->is_active==true){
            $is_active = 1;
        }else{
            $is_active=0;
        }
        if ($request->hasFile('avatar')) {
            $image = $request->file('avatar');
            $images = time().'-'.$image->getClientOriginalName();
            $image->move(public_path('files'),$images);
            $imageName = 'files/'.$images;
        }
        $user = new User([
            'username' => $request->username,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'avatar'=> $imageName,
            'is_active'=>$is_active
        ]);
        $user->save();
        $information = new InformationUser([
            'user_id' => $user->id,
             'name' => $request->name,
             'gender' => $request->gender,
             'phone' => $request->phone,
             'address' => $request->address,
        ]);
        $information->save();
        $userRole = new ModelHasRole([
            'role_id'=> $request->role_id,
            'model_type'=> User::class,
            'model_id' => $user->id,
        ]);
        $userRole->save();
        return response()->json(['status'=>'success','message'=>'The user successfully added','data'=>$user],201);
    }

    // edit user
    public function show($id)
    {
        $data=[];
        $data['user'] = User::find($id);
        $data['user']->load('information');
        $data['user']['role'] = ModelHasRole::where('model_id',$id)->first();
        $data['roles']=Role::all();
        return response()->json(['status'=>'success','message'=>'Succsess get user','data'=>$data],200);
    }

    // update user
    public function update($id, SaveUserRequest $request)
    {
      
        if($request->is_active==true){
            $is_active = 1;
        }else{
            $is_active=0;
        }
        $user = User::find($id);
        $imageName = $user->avatar;
        if ($request->hasFile('avatar')) {
            $image = $request->file('avatar');
            $images = time().'-'.$image->getClientOriginalName();
            $image->move(public_path('files'),$images);
            $imageName = 'files/'.$images;
        }
         $user->username = $request->username;
         $user->email = $request->email;
         $user->avatar = $imageName;
         $user->is_active = $is_active;
         $user->save();
        $userRole = ModelHasRole::where('model_id',$id)->first();
        $userRole->role_id = $request->role_id;
        $userRole->save();
        $info = InformationUser::where('user_id',$id)->first();
        if(!empty($info)){
            $info->name = $request->name;
            $info->gender = $request->gender;
            $info->phone = $request->phone;
            $info->address = $request->address;
            $info->save();
        }else{
           $information = new InformationUser([
                'user_id' => $id,
                 'name' => $request->name,
                 'gender' => $request->gender,
                 'phone' => $request->phone,
                 'address' => $request->address,
            ]);
            $information->save();
        }
        return response()->json([
            'status'=>'success',
            'messege' => 'The user successfully updated','data'=>$user
        ], 200);
    }

    // delete user
    public function delete($id)
    {
        $user = User::find($id);
        $user->delete();

        return response()->json([
            'status'=>'success',
            'messege' => 'Succsess delete user',
        ], 200);
    }
}
