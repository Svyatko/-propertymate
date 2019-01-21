<?php

use Illuminate\Database\Seeder;

class DocSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(\App\Doc::class, 100)->create()->each(function ($doc) {
            $doc->make();
        });
    }
}
