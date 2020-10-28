<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ArticlesController extends Controller
{
    public function index(Request $request)
    {
        return view('articles.index');
    }
}
