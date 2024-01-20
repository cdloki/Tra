<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Sliders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sliders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('keyword_slider')->nullable();
            $table->text('description_slider')->nullable();
            $table->text('image_slider')->nullable();
            $table->string('tbutton_slider', 120)->nullable();
            $table->string('cbutton_slider', 120)->nullable();
            $table->text('url_slider')->nullable();

            $table->boolean('status')->default(0);
            $table->integer('location_slider')->default(0);
            // $table->boolean('status')->default(0);
            $table->timestamps();
            $table->string('create_by_id', 120)->nullable();
            $table->string('last_modify_by_id', 120)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sliders');
    }
}
