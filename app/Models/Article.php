<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Encore\Admin\Traits\DefaultDatetimeFormat;

class Article extends Model
{

    use DefaultDatetimeFormat;

    protected $fillable = [
        'title','description','image','body','sortrank',
    ];

    public function category()
    {
        return $this->belongsTo(Article::class);
    }


}
