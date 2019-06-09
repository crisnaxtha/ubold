<?php

use Illuminate\Database\Seeder;
use App\Model\Dcms\Category;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::create([
            'parent_id' => 0,
            'name'      => 'Uncategorized',
            'slug'      => 'uncategoriezed',
            'category_post_count' => 0
            
        ]);
    }
}
