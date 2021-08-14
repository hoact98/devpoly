<?php

namespace App\Http\Controllers;

use App\Http\Requests\SaveUserRequest;
use App\Http\Requests\SaveMentorRequest;
use App\Models\InformationUser;
use App\Models\ModelHasPermission;
use App\Models\ModelHasRole;
use App\Models\Permission;
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
        $users = User::latest()->paginate(5);
        $users->load('information');
        $users->load('roles');
        return response()->json([
            'status' => 'success',
            'messege' => 'Succsess get list user',
            'data' => $users,
        ], 200);
    }
    public function getAllMentors()
    {
        $users = Role::where('name', 'mentor')->latest()->paginate(5);
        $users->load('users');
        return response()->json([
            'status' => 'success',
            'messege' => 'Succsess get list mentor',
            'data' => $users,
        ], 200);
    }

    // add user -> add user_role
    public function create(SaveUserRequest $request)
    {
        $this->validate($request, [
            'password' => ['required', 'min:6'],
        ]);
        $imageName = '';
        if ($request->is_active == true) {
            $is_active = 1;
        } else {
            $is_active = 0;
        }
        if ($request->hasFile('avatar')) {
            $image = $request->file('avatar');
            $images = time() . '-' . $image->getClientOriginalName();
            $image->move(public_path('files'), $images);
            $imageName = 'files/' . $images;
        }
        $user = new User([
            'username' => $request->username,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'avatar' => $imageName,
            'is_active' => $is_active
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
            'role_id' => $request->role_id,
            'model_type' => User::class,
            'model_id' => $user->id,
        ]);
        $userRole->save();
        foreach ($request->permission_id as $id) {
            $model_has_permission = new ModelHasPermission([
                'permission_id' => $id,
                'model_id' => $user->id,
                'model_type' => User::class,
            ]);
            $model_has_permission->save();
        }
        return response()->json(['status' => 'success', 'message' => 'The user successfully added', 'data' => $user], 201);
    }
    public function AddMentor(SaveMentorRequest $request)
    {
        $this->validate($request, [
            'password' => ['required', 'min:6'],
        ]);
        $imageName = '';
        if ($request->is_active == true) {
            $is_active = 1;
        } else {
            $is_active = 0;
        }
        if ($request->hasFile('avatar')) {
            $image = $request->file('avatar');
            $images = time() . '-' . $image->getClientOriginalName();
            $image->move(public_path('files'), $images);
            $imageName = 'files/' . $images;
        }
        $user = new User([
            'username' => $request->username,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'avatar' => $imageName,
            'is_active' => $is_active
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
            'role_id' => 15,
            'model_type' => User::class,
            'model_id' => $user->id,
        ]);
        $userRole->save();
        foreach ($request->permission_id as $id) {
            $model_has_permission = new ModelHasPermission([
                'permission_id' => $id,
                'model_id' => $user->id,
                'model_type' => User::class,
            ]);
            $model_has_permission->save();
        }
        return response()->json(['status' => 'success', 'message' => 'The user successfully added', 'data' => $user], 201);
    }
    // edit user
    public function show($id)
    {
        $data = [];
        $data['user'] = User::find($id);
        $data['user']->load('information');
        $data['user']['role'] = ModelHasRole::where('model_id', $id)->first();
        $data['roles'] = Role::all();
        $data['user']->load('hasPermission');
        $data['permissions'] = Permission::all();
        return response()->json(['status' => 'success', 'message' => 'Succsess get user', 'data' => $data], 200);
    }
    public function getOneMentor($id)
    {
        $data = [];
        $data['user'] = User::find($id);
        $data['user']->load('information');
        $data['user']['role'] = ModelHasRole::where('model_id', $id)->first();
        $data['roles'] = Role::all();
        $data['user']->load('hasPermission');
        $data['permissions'] = Permission::all();
        return response()->json(['status' => 'success', 'message' => 'Succsess get user', 'data' => $data], 200);
    }
    // update user
    public function update($id, SaveUserRequest $request)
    {

        if ($request->is_active == true) {
            $is_active = 1;
        } else {
            $is_active = 0;
        }
        $user = User::find($id);
        $imageName = $user->avatar;
        if ($request->hasFile('avatar')) {
            $image = $request->file('avatar');
            $images = time() . '-' . $image->getClientOriginalName();
            $image->move(public_path('files'), $images);
            $imageName = 'files/' . $images;
        }
        $user->username = $request->username;
        $user->email = $request->email;
        $user->avatar = $imageName;
        $user->is_active = $is_active;
        $user->save();

        ModelHasRole::where('model_id', $id)->delete();
        $userRole = new ModelHasRole([
            'role_id' => $request->role_id,
            'model_type' => User::class,
            'model_id' => $id,
        ]);
        $userRole->save();

        $info = InformationUser::where('user_id', $id)->first();
        if (!empty($info)) {
            $info->name = $request->name;
            $info->gender = $request->gender;
            $info->phone = $request->phone;
            $info->address = $request->address;
            $info->save();
        } else {
            $information = new InformationUser([
                'user_id' => $id,
                'name' => $request->name,
                'gender' => $request->gender,
                'phone' => $request->phone,
                'address' => $request->address,
            ]);
            $information->save();
        }
        ModelHasPermission::where('model_id', $id)->delete();
        foreach ($request->permission_id as $id) {
            $model_has_permission = new ModelHasPermission([
                'permission_id' => $id,
                'model_id' => $user->id,
                'model_type' => User::class,
            ]);
            $model_has_permission->save();
        }
        return response()->json([
            'status' => 'success',
            'messege' => 'The user successfully updated', 'data' => $user
        ], 200);
    }
    public function updateMentor($id, SaveUserRequest $request)
    {

        if ($request->is_active == true) {
            $is_active = 1;
        } else {
            $is_active = 0;
        }
        $user = User::find($id);
        $imageName = $user->avatar;
        if ($request->hasFile('avatar')) {
            $image = $request->file('avatar');
            $images = time() . '-' . $image->getClientOriginalName();
            $image->move(public_path('files'), $images);
            $imageName = 'files/' . $images;
        }
        $user->username = $request->username;
        $user->email = $request->email;
        $user->avatar = $imageName;
        $user->is_active = $is_active;
        $user->save();

        ModelHasRole::where('model_id', $id)->delete();
        $userRole = new ModelHasRole([
            'role_id' => 15,
            'model_type' => User::class,
            'model_id' => $id,
        ]);
        $userRole->save();

        $info = InformationUser::where('user_id', $id)->first();
        if (!empty($info)) {
            $info->name = $request->name;
            $info->gender = $request->gender;
            $info->phone = $request->phone;
            $info->address = $request->address;
            $info->save();
        } else {
            $information = new InformationUser([
                'user_id' => $id,
                'name' => $request->name,
                'gender' => $request->gender,
                'phone' => $request->phone,
                'address' => $request->address,
            ]);
            $information->save();
        }
        ModelHasPermission::where('model_id', $id)->delete();
        foreach ($request->permission_id as $id) {
            $model_has_permission = new ModelHasPermission([
                'permission_id' => $id,
                'model_id' => $user->id,
                'model_type' => User::class,
            ]);
            $model_has_permission->save();
        }
        return response()->json([
            'status' => 'success',
            'messege' => 'The user successfully updated', 'data' => $user
        ], 200);
    }
    // delete user
    public function delete($id)
    {
        $user = User::find($id);
        $user->delete();

        return response()->json([
            'status' => 'success',
            'messege' => 'Succsess delete user',
        ], 200);
    }

    public function changePass(Request $request)
    {
        $request->validate([
            'password' => ['required', 'min:6'],
            'new_password' => ['required', 'min:6'],
            'new_confirm_password' => ['same:new_password'],
        ]);
        $user = User::find($request->id);
        if (Hash::check($request->password, $user->password)) {
            $user->password = Hash::make($request->new_password);
            $user->save();
            return response()->json([
                'status' => 'success',
            ]);
        } else {
            return response()->json(
                ['errors' => ['password' => ['Current password does not match']]],
                422
            );
        }
    }
    public function getChallenge()
    {
        $user = User::where('id', auth('api')->user()->id)->first();
        $user->load('challenges');
        return response()->json([
            'status' => 'success',
            'data' => $user
        ], 200);
    }
}
