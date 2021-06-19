<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'guard_name'
    ];
    protected $guard_name = 'api';

    public function users()
    {
        return $this->belongsToMany(User::class,'model_has_roles','role_id','model_id');
    }
    public function permissions()
    {
        return $this->belongsToMany(Permission::class,'role_has_permissions', 'role_id', 'permission_id');
    }
    public function roleHasPermissions(){
        return $this->hasMany(RoleHasPermission::class,'role_id');
    }
}
