<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SolutionUser extends Model
{
    use HasFactory;
    protected $table = "solution_users";
    protected $fillable = ['user_id','solution_id']; 
}
