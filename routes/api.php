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
use App\Http\Controllers\ChallengeCategoryController;
use App\Http\Controllers\ChallengeController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\FeedbackController;
use App\Http\Controllers\SolutionController;
use App\Http\Controllers\ChatController;
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

Route::group(['middleware' => 'api'], function () {
    Route::post('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/register', [AuthController::class, 'register'])->name('register');
    Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
    Route::post('/refresh', [AuthController::class, 'refresh'])->name('refresh');
    Route::get('/user', [AuthController::class, 'userProfile'])->name('userProfile');
});

// Route::group(['middleware' => 'auth:api'], function () {
//     Route::post('logout', [LoginController::class, 'logout']);

//     Route::get('user', [UserController::class, 'current']);
// });
Route::post('change-password/{id}',[UserController::class, 'changePass'])->name('change.password');
Route::get('users', [UserController::class, 'index'])->name('users');
Route::get('getChallenge', [UserController::class, 'getChallenge'])->name('getChallenge.user');
Route::group(['prefix' => 'user'], function () {
    Route::post('add', [UserController::class, 'create'])->name('create.user');
    Route::get('{id}', [UserController::class, 'show'])->name('show.user');
    Route::post('update/{id}', [UserController::class, 'update'])->name('update.user');
    Route::delete('delete/{id}', [UserController::class, 'delete'])->name('delete.user');
});
Route::get('mentors', [UserController::class, 'getAllMentors'])->name('mentors');
Route::group(['prefix' => 'mentor'], function () {
    Route::post('add', [UserController::class, 'AddMentor'])->name('create.mentor');
    Route::get('{id}', [UserController::class, 'getOneMentor'])->name('getOne.mentor');
    Route::post('update/{id}', [UserController::class, 'updatedMentor'])->name('update.mentor');
});

Route::get('roles', [RoleController::class, 'index'])->name('roles');
Route::group(['prefix' => 'role'], function () {
    Route::post('add', [RoleController::class, 'create'])->name('create.role');
    Route::get('{id}', [RoleController::class, 'show'])->name('show.role');
    Route::post('update/{id}', [RoleController::class, 'update'])->name('update.role');
    Route::delete('delete/{id}', [RoleController::class, 'delete'])->name('delete.role');
});

Route::get('permissions', [PermissionController::class, 'index'])->name('permissions');
Route::group(['prefix' => 'permission'], function () {
    Route::post('add', [PermissionController::class, 'create'])->name('create.permission');
    Route::get('{id}', [PermissionController::class, 'show'])->name('show.permission');
    Route::post('update/{id}', [PermissionController::class, 'update'])->name('update.permission');
    Route::delete('delete/{id}', [PermissionController::class, 'delete'])->name('delete.permission');
});

Route::get('challengecategories', [ChallengeCategoryController::class, 'index'])->name('challengecategories');
Route::get('get_All_Challenge_Category', [ChallengeCategoryController::class, 'get_All_Challenge_Category'])->name('get_All.challengecategory');
Route::get('get_One_Challenge_Category/{slug}', [ChallengeCategoryController::class, 'get_One_Challenge_Category'])->name('get_One.challengecategory');
Route::group(['prefix' => 'challengecategory'], function () {
    Route::post('add', [ChallengeCategoryController::class, 'create'])->name('create.challengecategory');
    Route::get('{id}', [ChallengeCategoryController::class, 'show'])->name('show.challengecategory');
    Route::post('update/{id}', [ChallengeCategoryController::class, 'update'])->name('update.challengecategory');
    Route::delete('delete/{id}', [ChallengeCategoryController::class, 'delete'])->name('delete.challengecategory');

});

Route::get('challenges', [ChallengeController::class, 'index'])->name('challenges');
Route::get('get_One_Challenge/{slug}', [ChallengeController::class, 'get_One_Challenge'])->name('get_One.challenge');
Route::post('add_Challenge_To_User/{id}', [ChallengeController::class, 'addChallengeToUser'])->name('addChallengeToUser.challenge');
Route::get('get_Challenge_To_User/{slug}', [ChallengeController::class, 'getChallengeToUser'])->name('getChallengeToUser.challenge');
Route::group(['prefix' => 'challenge'], function () {
    Route::post('add', [ChallengeController::class, 'create'])->name('create.challenge');
    Route::get('{id}', [ChallengeController::class, 'show'])->name('show.challenge');
    Route::post('update/{id}', [ChallengeController::class, 'update'])->name('update.challenge');
    Route::delete('delete/{id}', [ChallengeController::class, 'delete'])->name('delete.challenge');
});

Route::get('solutions', [SolutionController::class, 'index'])->name('solutions');
Route::get('category-solutions/{slug}', [SolutionController::class, 'categorySolution'])->name('categorySolutions');
Route::get('detail-solution/{id}', [SolutionController::class, 'detailSolution'])->name('detailSolution');
Route::get('get-all-solution', [SolutionController::class, 'getAllSolution'])->name('showSolution');
Route::get('get-detail-solution/{id}', [SolutionController::class, 'showDetailSolution'])->name('showDetailSolution');
Route::group(['prefix' => 'solution'], function () {
    Route::post('add', [SolutionController::class, 'create'])->name('create.solution');
    Route::get('{id}', [SolutionController::class, 'show'])->name('show.solution');
    Route::post('update/{id}', [SolutionController::class, 'update'])->name('update.solution');
    Route::delete('delete/{id}', [SolutionController::class, 'delete'])->name('delete.solution');
});


Route::get('feedbacks', [FeedbackController::class, 'index'])->name('feedbacks');


Route::middleware(['api'])->get('/chat/rooms', [ChatController::class, 'rooms'])->name('rooms');
Route::middleware(['api'])->get('/chat/room/{roomID}/messages', [ChatController::class, 'messages'])->name('messages');
Route::middleware(['api'])->post('/chat/room/{roomID}/message', [ChatController::class, 'newMessage'])->name('newMessage');
