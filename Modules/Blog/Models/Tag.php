<?php

namespace Modules\Blog;

use App\Model;

class Tag extends Model
{

    const TABLE = 'tags';
    const COLUMNS = [
       'name'   => ['type'=>'string'],
    ];
    const RELATIONS = [
        'posts'=>['type'=>'manyToMany','model'=>'Models\Post']
    ];
}
