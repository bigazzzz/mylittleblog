<?php

namespace Modules\Models\Blog;

use App\Model;

class Author extends Model
{
    const TABLE = 'authors';
    const COLUMNS = [
       'name'   => ['type'=>'string'],
    ];
    const RELATIONS = [
        'posts'=>['type'=>'hasMany','model'=>'Modules\Models\Blog\Post'],
    ];

}