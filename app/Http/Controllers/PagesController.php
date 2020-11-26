<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Advert;

class PagesController extends Controller
{
    public function root(Request $request)
    {
        $adverts = Advert::all();
        return view('pages.root',compact('adverts'));
    }
}
