<?php

namespace App\Models;

use App\Model;

class UserSessions extends Model
{
    const TABLE = 'user_sessions';
    const COLUMNS = [
       'user_id'   => ['type'=>'int'],
       'hash'   => ['type'=>'string'],
       'ua'   => ['type'=>'text'],
       'ip'   => ['type'=>'string'],
    ];
    const RELATIONS = [
    	'user'=>['type'=>'hasOne','model'=>'\App\Models\User']
    ];

}