<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Encore\Admin\Traits\DefaultDatetimeFormat;

class AdvertType extends Model
{
    use DefaultDatetimeFormat;

    public function adverts()
    {
        return $this->hasMany(Advert::class);
    }
}
