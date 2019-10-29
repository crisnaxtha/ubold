<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name'=>'Lochan',
            'email'=>'Krishnashrestha49@gmail.com',
            'password'=>bcrypt('password'),
            'role_super' => 1
        ]);
    }
}
