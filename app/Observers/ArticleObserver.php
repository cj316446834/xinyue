<?php

namespace App\Observers;
use App\Models\Article;

class ArticleObserver
{
    public function saving(Article $article)
    {
        $article->description = make_description($article->body);
    }
}
