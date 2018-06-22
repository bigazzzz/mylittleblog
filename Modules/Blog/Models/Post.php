<?php

namespace Modules\Blog;

use App\Model;

class Post extends Model
{

    const TABLE = 'posts';
    const COLUMNS = [
       'title'   => ['type'=>'string'],
       'intro_text' => ['type'=>'text'],
       'full_text' => ['type'=>'text'],
       'user_id' => ['type'=>'int'],
       'preview_image' => ['type'=>'string'],
    ];
    const RELATIONS = [
        'tags'=>['type'=>'manyToMany','model'=>'Models\Tag'],
        'user'=>['type'=>'hasOne','model'=>'\App\Models\User']
    ];

}
