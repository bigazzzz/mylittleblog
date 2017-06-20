<?php

namespace Modules\Models\Blog;

use App\Model;

class Tag2Post extends Model
{
    const TABLE = 'tags2posts';
    const COLUMNS = [
       'tag_id'   => ['type'=>'int'],
       'post_id'   => ['type'=>'int'],
    ];
/*
     const RELATIONS = [
        'posts'=>['type'=>'belongs_to','model'=>'Modules\Models\Blog\Post', 'connected_id'=>'post_id'],
        'tags'=>['type'=>'hasMany','model'=>'Modules\Models\Blog\Tag', 'connected_id'=>'id'],
    ];
*/
}