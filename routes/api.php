<?php

use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\OAuthController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\ResetPasswordController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Auth\VerificationController;
use App\Http\Controllers\RoleController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/refresh', [AuthController::class, 'refresh']);
    Route::get('/user', [AuthController::class, 'userProfile']);    
});

// Route::group(['middleware' => 'auth:api'], function () {
//     Route::post('logout', [LoginController::class, 'logout']);

//     Route::get('user', [UserController::class, 'current']);
// });

Route::group(['middleware' => 'guest:api'], function () {
    Route::post('login', [LoginController::class, 'login']);
    Route::post('register', [RegisterController::class, 'register']);

    Route::post('password/email', [ForgotPasswordController::class, 'sendResetLinkEmail']);
    Route::post('password/reset', [ResetPasswordController::class, 'reset']);

    Route::post('email/verify/{user}', [VerificationController::class, 'verify'])->name('verification.verify');
    Route::post('email/resend', [VerificationController::class, 'resend']);

    Route::post('oauth/{driver}', [OAuthController::class, 'redirect']);
    Route::get('oauth/{driver}/callback', [OAuthController::class, 'handleCallback'])->name('oauth.callback');
});

Route::get('users', [UserController::class, 'index'])->name('users');
Route::group(['prefix' => 'user'], function () {
    Route::post('add', [UserController::class, 'create'])->name('create.user');
    Route::get('{id}', [UserController::class, 'show'])->name('show.user');
    Route::post('update/{id}', [UserController::class, 'update'])->name('update.user');
    Route::delete('delete/{id}', [UserController::class, 'delete'])->name('delete.user');
});

// Route::get('roles', [RoleController::class, 'index'])->name('roles');
// Route::group(['prefix' => 'role'], function () {
//     Route::post('add', [RoleController::class, 'create'])->name('create.role');
//     Route::get('{id}', [RoleController::class, 'show'])->name('show.role');
//     Route::post('update/{id}', [RoleController::class, 'update'])->name('update.role');
//     Route::delete('delete/{id}', [RoleController::class, 'delete'])->name('delete.role');
// });
