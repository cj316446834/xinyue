<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Encore\Admin\Traits\DefaultDatetimeFormat;

class Advert extends Model
{
    use DefaultDatetimeFormat;

    public function advert_type()
    {
        return $this->belongsTo(AdvertType::class);
    }
}
