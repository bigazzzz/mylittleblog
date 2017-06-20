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
}