<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = [
        'title','description','image','body','sortrank',
    ];

    public function category()
    {
        return $this->belongsTo(Article::class);
    }


}
