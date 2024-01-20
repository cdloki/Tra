<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRoomsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rooms', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('code_room', 120);
            $table->string('name_room', 120);
            $table->string('url_room', 120);
            $table->text('image_room')->nullable();
            $table->text('description_room')->nullable();
            $table->string('keyword_seo_room', 120)->nullable();
            $table->string('title_seo_room', 120)->nullable();
            $table->text('description_seo_room')->nullable();
            $table->boolean('status')->default(0);
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
        Schema::dropIfExists('rooms');
    }
}
