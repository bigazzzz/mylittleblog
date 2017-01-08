<?php

namespace App\Models;

use App\Model;

class Article extends Model
{
    const TABLE = 'articles';
    public $author_id;
    public $title;
    public $intro_text;
    public $full_text;

    public function __get($k)
    {	
    	if ($k == 'author'){
	    	if (isset($this->author_id)){
	    		return \App\Models\Author::findById($this->author_id);
	    	} else {
	    		return false;
	    	}
    	}
    	return NULL;
    }

}