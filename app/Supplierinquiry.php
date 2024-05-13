<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;


class Supplierinquiry extends Model
{
    use SoftDeletes, LogsActivity;
    protected $table = "supplierinquiries"; 

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults();
    }
}
