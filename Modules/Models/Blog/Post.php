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
        'author'=>['type'=>'has_one','model'=>'\Modules\Models\Blog\Author'],
    ];
 
}