<?php

namespace App\Models;

use App\Model;

class Users extends Model
{
    const TABLE = 'users';
    const COLUMNS = [
       'login'   => ['type'=>'string'],
       'name'   => ['type'=>'string'],
       'password'   => ['type'=>'string'],
    ];
    const RELATIONS = [
    ];

}