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
        'posts'=>['type'=>'manyToMany','model'=>'\Modules\Models\Blog\Post', 'link_model'=>'\Modules\Models\Blog\Tag2Post', 'connected_id'=>'post_id', 'our_id'=>'tag_id']
    ];
 
}