<?php

namespace Modules\Models\Blog;

use App\Model;

class Tag extends Model
{

    const TABLE = 'tags';
    const COLUMNS = [
       'name'   => ['type'=>'string'],
    ];
    const RELATIONS = [
        'posts'=>['type'=>'many_to_many','model'=>'\Modules\Models\Blog\Post']
    ];
 
}