<?php

namespace App\Http\Controllers;

use App\Models\InformationUser;
use App\Models\ModelHasRole;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Facades\JWTAuth;
class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
        $this->guard = "api";
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request){
    	$validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        if (! $token = auth($this->guard)->attempt($validator->validated())) {
            return response()->json(['errors' => ['email'=> ['Email or password does not match']]], 401);
        }
        $user=User::where('email',$request->email)->first();
        if($user->hasPermissionTo('login admin')){
            $role = 1;
        }else if($user->hasPermissionTo('login user')){
            $role = 2;
        } else if ($user->hasPermissionTo('login userVip')) {
            $role = 3;
        }else if ($user->hasPermissionTo('login mentor')){
            $role = 4;
        }
        return $this->createNewToken($token,$role);
    }

    /**
     * Register a User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request) {
        $validator = Validator::make($request->all(), [
            'username' => 'required|string|between:2,100',
            'email' => 'required|string|email|max:100|unique:users',
            'password' => 'required|string|confirmed|min:6',
        ]);

        if($validator->fails()){
            return response()->json($validator->errors()->toJson(), 400);
        }

        $user = User::create(array_merge(
                    $validator->validated(),
                    ['password' =>  Hash::make($request->password)]
                ));
        $information = new InformationUser([
                'user_id' => $user->id,
                'username' => $request->name,
        ]);
        $information->save();
        $userRole = new ModelHasRole([
            'role_id' =>5,
            'model_type' => User::class,
            'model_id' => $user->id,
        ]);
        $userRole->save();
        return response()->json([
            'message' => 'User successfully registered',
            'user' => $user
        ], 201);
    }


    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout() {
        auth($this->guard)->logout();
        return response()->json(['message' => 'User successfully signed out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh() {
        return $this->createNewToken( auth($this->guard)->refresh());
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function userProfile() {
        return response()->json(auth('api')->user());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token,$role){
        return response()->json([
            'status' => 'success',
            'access_token' => $token,
            'role' => $role,
            'token_type' => 'bearer',
            'expires_in' => auth($this->guard)->factory()->getTTL() * 60,
            'user' => auth('api')->user()
        ]);
    }

}
