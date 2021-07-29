<?php

use App\Http\Controllers\UserController;
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
Route::middleware('auth:api')->group(function() {
    Route::get('/logout', [AuthController::class,'logout'])->name('logout');
    Route::get('/user', [AuthController::class, 'user'])->name('me');
   
});
Route::group(['middleware' => 'api'], function () {
    Route::post('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/register', [AuthController::class, 'register'])->name('register');
});

// Route::group(['middleware' => 'auth:api'], function () {
//     Route::post('logout', [LoginController::class, 'logout']);

//     Route::get('user', [UserController::class, 'current']);
// });
Route::post('change-password/{id}',[UserController::class, 'changePass'])->name('change.password');
Route::get('users', [UserController::class, 'index'])->name('users');
Route::group(['prefix' => 'user'], function () {
    Route::post('add', [UserController::class, 'create'])->name('create.user');
    Route::get('all', [UserController::class, 'users'])->name('all.user');
    Route::get('{id}', [UserController::class, 'show'])->name('show.user');
    Route::post('update/{id}', [UserController::class, 'update'])->name('update.user');
    Route::post('profile/{id}', [UserController::class, 'profile'])->name('profile.user');
    Route::delete('delete/{id}', [UserController::class, 'delete'])->name('delete.user');
});

Route::get('roles', [RoleController::class, 'index'])->name('roles');
Route::group(['prefix' => 'role'], function () {
    Route::post('add', [RoleController::class, 'create'])->name('create.role');
    Route::get('all', [RoleController::class, 'roles'])->name('all.role');
    Route::get('{id}', [RoleController::class, 'show'])->name('show.role');
    Route::post('update/{id}', [RoleController::class, 'update'])->name('update.role');
    Route::delete('delete/{id}', [RoleController::class, 'delete'])->name('delete.role');
});

Route::get('permissions', [PermissionController::class, 'index'])->name('permissions');
Route::group(['prefix' => 'permission'], function () {
    Route::post('add', [PermissionController::class, 'create'])->name('create.permission');
    Route::get('all', [PermissionController::class, 'permissions'])->name('all.permission');
    Route::get('{id}', [PermissionController::class, 'show'])->name('show.permission');
    Route::post('update/{id}', [PermissionController::class, 'update'])->name('update.permission');
    Route::delete('delete/{id}', [PermissionController::class, 'delete'])->name('delete.permission');
});

Route::get('challengecategories', [ChallengeCategoryController::class, 'index'])->name('challengecategories');
Route::get('get_All_Challenge_Category', [ChallengeCategoryController::class, 'get_All_Challenge_Category'])->name('get_All.challengecategory');
Route::get('get_One_Challenge_Category/{slug}', [ChallengeCategoryController::class, 'get_One_Challenge_Category'])->name('get_One.challengecategory');
Route::group(['prefix' => 'challengecategory'], function () {
    Route::post('add', [ChallengeCategoryController::class, 'create'])->name('create.challengecategory');
    Route::get('all', [ChallengeCategoryController::class, 'categories'])->name('all.challengecategory');
    Route::get('{id}', [ChallengeCategoryController::class, 'show'])->name('show.challengecategory');
    Route::post('update/{id}', [ChallengeCategoryController::class, 'update'])->name('update.challengecategory');
    Route::delete('delete/{id}', [ChallengeCategoryController::class, 'delete'])->name('delete.challengecategory');

});

Route::get('challenges', [ChallengeController::class, 'index'])->name('challenges');
Route::get('get_One_Challenge/{slug}', [ChallengeController::class, 'get_One_Challenge'])->name('get_One.challenge');
Route::group(['prefix' => 'challenge'], function () {
    Route::post('add', [ChallengeController::class, 'create'])->name('create.challenge');
    Route::get('all', [ChallengeController::class, 'challenges'])->name('all.challenge');
    Route::get('{id}', [ChallengeController::class, 'show'])->name('show.challenge');
    Route::post('update/{id}', [ChallengeController::class, 'update'])->name('update.challenge');
    Route::delete('delete/{id}', [ChallengeController::class, 'delete'])->name('delete.challenge');
});

Route::get('solutions', [SolutionController::class, 'index'])->name('solutions');
Route::get('category-solutions/{slug}', [SolutionController::class, 'categorySolution'])->name('categorySolutions');
Route::get('detail-solution/{id}', [SolutionController::class, 'detailSolution'])->name('detailSolution');
Route::group(['prefix' => 'solution'], function () {
    Route::post('add', [SolutionController::class, 'create'])->name('create.solution');
    Route::get('all', [SolutionController::class, 'solutions'])->name('all.solution');
    Route::get('{id}', [SolutionController::class, 'show'])->name('show.solution');
    Route::post('update/{id}', [SolutionController::class, 'update'])->name('update.solution');
    Route::delete('delete/{id}', [SolutionController::class, 'delete'])->name('delete.solution');
});


Route::get('feedbacks', [FeedbackController::class, 'index'])->name('feedbacks');
Route::group(['prefix' => 'feedback'], function () {
    Route::middleware('auth:api')->post('add/{parent_id}/{solution_id}', [FeedbackController::class, 'create'])->name('create.feedback');
    Route::get('all', [FeedbackController::class, 'feedbacks'])->name('all.feedback');
    Route::get('solution-feedback/{solution_id}', [FeedbackController::class, 'solutionFeedback'])->name('solution.feedback');
    Route::post('update-approved/{id}', [FeedbackController::class, 'updateApproved'])->name('approved.feedback');
    Route::get('{id}', [FeedbackController::class, 'show'])->name('show.feedback');
    Route::post('update/{id}', [FeedbackController::class, 'update'])->name('update.feedback');
    Route::delete('delete/{id}', [FeedbackController::class, 'delete'])->name('delete.feedback');
});

Route::prefix('chat')->middleware('auth:api')->group(function() {
    Route::get('rooms', [ChatController::class, 'rooms'])->name('rooms');
    Route::get('room/{roomID}/messages', [ChatController::class, 'messages'])->name('messages');
    Route::get('room/{roomID}/message', [ChatController::class, 'newMessage'])->name('newMessage');
});
