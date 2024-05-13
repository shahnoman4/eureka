<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class Technology extends Model
{
	use SoftDeletes, LogsActivity;

	public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults();
    }   
}
