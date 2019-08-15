<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommonsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('commons', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('lang_id');
            $table->string('common_unique_id');
            $table->text('logo')->nullable();
            $table->string('header_first_title')->nullable();
            $table->string('header_second_title')->nullable();
            $table->string('header_third_title')->nullable();
            $table->string('header_fourth_title')->nullable();
            $table->string('footer_first_title')->nullable();
            $table->text('footer_first_description')->nullable();
            $table->string('footer_second_title')->nullable();
            $table->text('footer_second_description')->nullable();
            $table->string('footer_third_title')->nullable();
            $table->text('footer_third_description')->nullable();
            $table->string('footer_fourth_title')->nullable();
            $table->text('footer_fourth_description')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('commons');
    }
}
