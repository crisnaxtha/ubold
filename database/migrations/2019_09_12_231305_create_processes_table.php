<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProcessesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('processes', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('parent_id')->nullable();
            $table->unsignedInteger('order')->nullable();
            $table->string('name');
            $table->string('slug');
            $table->string('url')->nullable();
            $table->boolean('status');
            $table->boolean('featured')->nullable();
            $table->timestamps();
        });
        Schema::create('process_name', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('lang_id');
            $table->unsignedInteger('process_id');
            $table->string('name');
            $table->text('description')->nullable();
            $table->timestamps();
            $table->foreign('lang_id')
                        ->references('id')->on('languages')
                        ->onDelete('cascade');
            $table->foreign('process_id')
                        ->references('id')->on('processes')
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
        Schema::dropIfExists('process_name');
        Schema::dropIfExists('processes');
    }
}
