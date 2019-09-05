<?php

use Illuminate\Database\Seeder;
use App\Model\Dcms\Language;
use Illuminate\Support\Facades\DB;

class LanguagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
   
        DB::table('languages')->insert([
            'name'=>'English',
            'code'=>'en',
            'status'=>1
        ]);
        DB::table('languages')->insert([
            'name' => 'Nepali',
            'code'=>'np',
            'status'=> 1
        ]);
    }
}
