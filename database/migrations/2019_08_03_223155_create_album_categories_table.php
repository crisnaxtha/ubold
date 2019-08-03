<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAlbumCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('album_categories', function (Blueprint $table) {
            $table->increments('id');
                $table->unsignedInteger('lang_id');
                $table->unsignedInteger('parent_id')->nullable();
                $table->unsignedInteger('order')->nullable();
                $table->string('category_unique_id');
                $table->string('icon')->nullable();
                $table->string('color')->nullable();
                $table->string('name');
                $table->string('slug');
                $table->text('description')->nullable();
                $table->unsignedInteger('category_post_count')->default(0);
                $table->boolean('featured')->nullable();
                $table->timestamps();
                $table->foreign('lang_id')
                            ->references('id')->on('languages')
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
        Schema::dropIfExists('album_categories');
    }
}
