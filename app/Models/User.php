<?php

namespace App\Models;

use Laravel\Passport\HasApiTokens;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use GoldSpecDigital\LaravelEloquentUUID\Database\Eloquent\Uuid;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Spatie\Permission\Traits\HasRoles;
use JamesDordoy\LaravelVueDatatable\Traits\LaravelVueDatatableTrait;

class User extends Authenticatable
{
    use HasApiTokens,HasFactory, Notifiable,Uuid,HasRoles,LaravelVueDatatableTrait;

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
    protected $dataTableColumns = [
        'id' => [
            'searchable' => false,
        ],
        'username' => [
            'searchable' => true,
        ],
        'email' => [
            'searchable' => true,
        ]
    ];

    protected $dataTableRelationships = [
        "belongsToMany" => [
            "roles" => [
                "model" => Role::class,
                "foreign_key" => "role_id",
                "pivot" => [
                    "table_name" => "model_has_roles",
                    "primary_key" => "model_id",
                    "foreign_key" => "role_id",
                    "local_key" => "model_id",
                ],
                // "order_by" => "name",
                // "order_dir" => "asc",
                "columns" => [
                    "name" => [
                        "searchable" => true,
                        "orderable" => true,
                    ]
                ],
            ],
        ]
    ];
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

    public function messages(){
        return $this->hasMany(Message::class);
    }
}
