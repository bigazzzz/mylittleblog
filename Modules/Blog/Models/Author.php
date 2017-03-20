<?php

namespace Modules\Blog\Models;

use App\Model;

class Author extends Model
{
    const TABLE = 'authors';
    const COLUMNS = [
       'name'   => ['type'=>'string'],
    ];
    const RELATIONS = [
        'posts'=>['type'=>'has_many','model'=>'Modules\Blog\Models\Post'],
    ];

}