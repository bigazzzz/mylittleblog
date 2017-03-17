<?php

namespace App\Models;

use App\Model;

class Author extends Model
{
    const TABLE = 'authors';
    const COLUMNS = [
       'name'   => ['type'=>'string'],
    ];
    const RELATIONS = [
        'articles'=>['type'=>'has_many','model'=>'\App\Models\Article'],
    ];

}