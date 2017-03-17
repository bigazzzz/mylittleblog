<?php

namespace App\Models;

use App\Model;

class Article extends Model
{


    const TABLE = 'articles';
    const COLUMNS = [
       'title'   => ['type'=>'string'],
       'intro_text' => ['type'=>'string'],
       'full_text' => ['type'=>'string'],
       'author_id' => ['type'=>'int'],
       'preview_image' => ['type'=>'string'],
    ];
    const RELATIONS = [
        'author'=>['type'=>'has_one','model'=>'\App\Models\Author'],
    ];
 
}