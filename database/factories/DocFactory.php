<?php

use Faker\Generator as Faker;

$factory->define(App\Doc::class, function (Faker $faker) {
    return [
        'number' => rand(100000, 999999),
        'contact_id' => factory(App\Contact::class)->create()->id,
    ];
});
