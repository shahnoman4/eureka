<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Innerpage extends Model
{
    use SoftDeletes;

    public function setSlugAttribute(){
        $this->attributes['slug'] = str_slug($this->page_name , "-");
    }

    function mainpoint() {

      return $this->hasMany('App\Mainpoint');

    }
}
