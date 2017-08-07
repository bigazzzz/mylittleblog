<?php

namespace Modules\Models\Blog;

use App\Model;

class Post extends Model
{

    const TABLE = 'posts';
    const COLUMNS = [
       'title'   => ['type'=>'string'],
       'intro_text' => ['type'=>'text'],
       'full_text' => ['type'=>'text'],
       'author_id' => ['type'=>'int'],
       'preview_image' => ['type'=>'string'],
    ];
    const RELATIONS = [
        'tags'=>['type'=>'manyToMany','model'=>'\Modules\Models\Blog\Tag'],
        'author'=>['type'=>'hasOne','model'=>'\Modules\Models\Blog\Author']
    ];
 
}