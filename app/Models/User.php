<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use GoldSpecDigital\LaravelEloquentUUID\Database\Eloquent\Uuid;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable implements JWTSubject
{
    use HasFactory, Notifiable,Uuid,HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username',
        'email',
        'password',
        'avatar',
        'online',
        'socket_id',
        'is_active'
    ];

    protected $keyType = 'string';
    public $incrementing = false;
    protected $guard_name = 'api';
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    // public function roles(){
    //     return $this->belongsToMany(Role::class,'user_roles');
    // }
    
    /**
     * Get the profile photo URL attribute.
     *
     * @return string
     */
    public function getPhotoUrlAttribute()
    {
        return vsprintf('https://www.gravatar.com/avatar/%s.jpg?s=200&d=%s', [
            md5(strtolower($this->email)),
            $this->username ? urlencode("https://ui-avatars.com/api/$this->username") : 'mp',
        ]);
    } 
   
    /**
     * @return int
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }

    public function information (){
        return $this->hasOne(InformationUser::class,'user_id');
    }
    public function roles()
    {
        return $this->belongsToMany(Role::class,'model_has_roles', 'model_id', 'role_id');
    }
    public function permissions()
    {
        return $this->belongsToMany(Permission::class,'model_has_permissions', 'model_id', 'permission_id');
    }
    public function hasPermission()
    {
        return $this->hasMany(ModelHasPermission::class,'model_id');
    }
    public function challenges()
    {
        return $this->belongsToMany(Challenge::class,'challenge_users', 'user_id', 'challen_id');
    }
    public function solutions()
    {
        return $this->belongsToMany(Solution::class,'solution_users', 'user_id', 'solution_id');
    }
    public function feedbacks()
    {
        return $this->hasMany(Feedback::class,'user_id');
    }
}
