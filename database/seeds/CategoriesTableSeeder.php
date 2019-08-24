<?php

use Illuminate\Database\Seeder;
use App\Model\Dcms\Setting;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       Setting::create([
           'language' => 1
       ]);
    }
}
