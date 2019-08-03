<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
            Schema::create('categories', function (Blueprint $table) {
                $table->increments('id');
                $table->unsignedInteger('parent_id')->nullable();
                $table->unsignedInteger('order')->nullable();
                $table->string('icon')->nullable();
                $table->string('color')->nullable();
                $table->string('name');
                $table->string('slug');
                $table->boolean('featured')->nullable();
                $table->timestamps();
        });
        Schema::create('categories_name', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('lang_id');
            $table->unsignedInteger('category_id');
            $table->string('name');
            $table->text('description')->nullable();
            $table->boolean('featured')->nullable();
            $table->timestamps();
            $table->foreign('lang_id')
                        ->references('id')->on('languages')
                        ->onDelete('cascade');
            $table->foreign('category_id')
                        ->references('id')->on('categories')
                        ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories_name');
        Schema::dropIfExists('categories');
    }
}
