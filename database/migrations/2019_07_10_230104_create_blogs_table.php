<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBlogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blogs', function (Blueprint $table) {
            $table->increments('id');
            // $table->unsignedInteger('user_id');
            $table->string('title')->nullable();
            $table->text('thumbnail')->nullable();
            $table->text('link')->nullable();
            $table->text('description')->nullable();
            $table->boolean('status');
            $table->boolean('featured')->nullable();
            $table->timestamps();
            // $table->foreign('user_id')
            //     ->references('id')->on('users')
            //     ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('blogs');
    }
}
