<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class Innerpage extends Model
{
    use SoftDeletes, LogsActivity;

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults();
    }

    public function setSlugAttribute(){
        $this->attributes['slug'] = str_slug($this->page_name , "-");
    }

    function mainpoint() {

      return $this->hasMany('App\Mainpoint');

    }
}
