<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller;
use App\Models\ModelHasRole;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
class AuthController extends Controller 
{
  /** 
   * Login API 
   * 
   * @return \Illuminate\Http\Response 
   */ 
  
 
  public function login(Request $request)
  {
     $rule= [
          'email' => 'required|email',
          'password' => 'required|min:6'
        ];
        $messages = [
            'email.required' => "Hãy nhập email",
            'password.min' => "Ít nhất có 6 ký tự",
            'password.required' => "Nhập mật khẩu",
            'email.email' => "Email không đúng định dạng",
        ];
   
        $validator =  Validator::make($request->all(),$rule,$messages);
          if ($validator->fails()) { 
            return response()->json(['errors'=>$validator->errors()],422);
          }
      if(!Auth::attempt(['email' => $request->email, 'password' => $request->password]))
          return response()->json(['errors' => ['password'=> ['Tài khoản hoặc mật khẩu không đúng!']]],422);
      $user = $request->user();
      $tokenResult = $user->createToken('Personal Access Token');
      $token = $tokenResult->token;
      $token->save();
      return response()->json([
          'access_token' => $tokenResult->accessToken,
          'status' => 'success',
      ],200);
  }

  /** 
   * Register API 
   * 
   * @return \Illuminate\Http\Response 
   */ 
  public function register(Request $request) 
  { 
    $rule= [
      'name' => 'required', 
      'email' => 'required|email', 
      'password' => 'required|min:6', 
      'password_confirmation' => 'required|same:password', 
    ];
    $messages = [
        'name.required' => "Hãy nhập tên",
        'email.required' => "Hãy nhập email",
        'password.min' => "Ít nhất có 6 ký tự",
        'password.required' => "Nhập mật khẩu",
        'email.email' => "Email không đúng định dạng",
        'password_confirmation.required'=>"Xác nhận mật khẩu",
        'password_confirmation.same'=>"Mật khẩu xác nhận không khớp"
    ];

    $validator =  Validator::make($request->all(),$rule,$messages);
      if ($validator->fails()) { 
        return response()->json(['errors'=>$validator->errors()],422);
      }
      $checkEmail =User::where('email',$request->email)->get();
      if(count($checkEmail)>0){
        return response()->json(['errors' => ['email'=> ['Email đã được đăng ký!']]],422);
      }
    $postArray = $request->all(); 
    $postArray['password'] = Hash::make($postArray['password']); 
    $user = User::create($postArray); 
    $userRole = new ModelHasRole([
      'role_id'=> 1,
      'model_type'=> User::class,
      'model_id' => $user->id,
  ]);
  $userRole->save();
    $success['token'] =  $user->createToken('LaravelPassport')->accessToken; 
    $success['name'] =  $user->name;
    return response()->json([
      'status' => 'success',
      'data' => $success,
    ],200); 
  }
  public function logout (Request $request) {
    $token = $request->user()->token();
    $token->revoke();
    return response()->json(['status' => 'success'],200);
  }

  public function user(Request $request)
  {
    return response()->json($request->user()->load('roles'),200);
  }
}