<?php

namespace Modules\Models\Blog;

use App\Model;

class Tag_to_Post extends Model
{
    const TABLE = 'tags_to_posts';
    const COLUMNS = [
       'tag_id'   => ['type'=>'int'],
       'post_id'   => ['type'=>'int'],
    ];
}