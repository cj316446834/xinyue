<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Article;
use Faker\Generator as Faker;
use App\Models\Category;

$factory->define(Article::class, function (Faker $faker) {
    $date_time = $faker->date . ' ' . $faker->time;
    return [
        'category_id' => $faker->randomElement([8,9,10,19,20,21,22,23,119]),
        'title' => $faker->sentence(8,true),
        'description' => $faker->text(200),
        'body' => $faker->text(1000),
        'created_at' => $date_time,
        'updated_at' => $date_time,
    ];
});
