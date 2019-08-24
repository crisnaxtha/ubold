<?php

use Illuminate\Database\Seeder;
use App\Model\Dcms\Setting;

class LanguagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setting::create([
            'name'=>'English',
            'code'=>'en',
            'status'=>1
        ]);
        Setting::create([
            'name' => "Nepali",
            'code' => 'np',
            'status' => 1
        ]);
    }
}
