<?php

use Illuminate\Support\Str;

function make_description($value, $length = 200)
{
    $description = trim(preg_replace('/\r\n|\r|\n+/', ' ', strip_tags($value)));
    return Str::limit($description, $length);
}