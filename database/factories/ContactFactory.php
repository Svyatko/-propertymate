<?php

use Faker\Generator as Faker;

$factory->define(\App\Contact::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'surname' => $faker->name,
        'created_at' => \Carbon\Carbon::now(), // secret
        'updated_at' => \Carbon\Carbon::tomorrow(),
    ];
});

$factory->define(\App\Doc::class, function (Faker $faker) {
    return [
        'number' => rand(100000, 999999),
        'contact_id' => factory(App\Contact::class)->create()->id,
    ];
});
