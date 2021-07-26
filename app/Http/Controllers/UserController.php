<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveUserRequest;
use App\Models\ModelHasPermission;
use App\Models\ModelHasRole;
use App\Models\Permission;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use JamesDordoy\LaravelVueDatatable\Http\Resources\DataTableCollectionResource;
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
    // public function index()
    // {
    //     $users= User::all();
    //     $users->load('roles');
    //     return response()->json([
    //         'status'=>'success',
    //         'messege' => 'Succsess get list users',
    //         'data' => $users,
    //     ], 200);
    // }

    public function index(Request $request)
    {   
        $query = User::eloquentQuery(
            $request->input('column'),
            $request->input('dir'),
            $request->input('search'),
            [
                "roles","challenges","solutions"
            ],
           
        );
        $data = $query->paginate($request->input('length'));
        return new DataTableCollectionResource($data);
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
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $images = time().'-'.$image->getClientOriginalName();
            $image->move(public_path('files'),$images);
            $imageName = 'files/'.$images;
        }
        $user = new User([
            'username' => $request->username,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'image'=> $imageName,
            'is_active'=>$is_active,
            'name'=>$request->name,
            'phone'=>$request->phone,
            'gender'=>$request->gender,
            'address'=>$request->address
        ]);
        $user->save();
      
        $userRole = new ModelHasRole([
            'role_id'=> $request->role_id,
            'model_type'=> User::class,
            'model_id' => $user->id,
        ]);
        $userRole->save();
        foreach ($request->permission_id as $id) {
            $model_has_permission = new ModelHasPermission([
                'permission_id' => $id,
                'model_id'=> $user->id,
                'model_type'=> User::class,
            ]);
            $model_has_permission->save();
        }
        return response()->json(['status'=>'success','message'=>'The user successfully added','data'=>$user],201);
    }

    // edit user
    public function show($id)
    {
        $data=[];
        $data['user'] = User::find($id);
        $data['user']['role'] = ModelHasRole::where('model_id',$id)->first();
        $data['roles']=Role::all();
        $data['user']->load('hasPermission');
        $data['permissions']= Permission::all();
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
        $imageName = $user->image;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $images = time().'-'.$image->getClientOriginalName();
            $image->move(public_path('files'),$images);
            $imageName = 'files/'.$images;
        }
         $user->username = $request->username;
         $user->email = $request->email;
         $user->name = $request->name;
         $user->phone = $request->phone;
         $user->gender = $request->gender;
         $user->address = $request->address;
         $user->image = $imageName;
         $user->is_active = $is_active;
         $user->save();
         
        ModelHasRole::where('model_id',$id)->delete();
        $userRole = new ModelHasRole([
            'role_id'=> $request->role_id,
            'model_type'=> User::class,
            'model_id' => $id,
        ]);
        $userRole->save();

        ModelHasPermission::where('model_id',$id)->delete();
        foreach ($request->permission_id as $id) {
           $model_has_permission = new ModelHasPermission([
               'permission_id' => $id,
               'model_id'=> $user->id,
               'model_type'=> User::class,
           ]);
           $model_has_permission->save();
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

    public function changePass(Request $request)
    {
        $rule= [
            'password' => 'required|min:6',
            'new_password' => 'required|min:6',
            'new_confirm_password' => 'required|same:new_password'
          ];
          $messages = [
              'password.min' => "Ít nhất có 6 ký tự",
              'password.required' => "Nhập mật khẩu",
              'new_password.min' => "Ít nhất có 6 ký tự",
              'new_password.required' => "Nhập mật khẩu mới",
              'new_confirm_password.required' => "Xác nhận mật khẩu",
              'new_confirm_password.same' => "Mật khẩu xác nhận không khớp",
          ];
     
          $validator =  Validator::make($request->all(),$rule,$messages);
            if ($validator->fails()) { 
              return response()->json(['errors'=>$validator->errors()],422);
            }
        $user = User::find($request->id);
           if (Hash::check($request->password, $user->password)) {
                $user->password = Hash::make($request->new_password);
                $user->save();
                return response()->json([
                'status' => 'success',
                ]);
           }else{
            return response()->json(['errors' => ['password'=> ['Mật khẩu không đúng']]], 
            422);
           }
    }
}