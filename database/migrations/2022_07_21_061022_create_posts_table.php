<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('code_post', 120);
            $table->string('name_post', 120);
            $table->string('url_post', 120);
            $table->text('image_post')->nullable();
            $table->text('description_post')->nullable();
            $table->text('content_post')->nullable();
            $table->string('keyword_seo_post', 120)->nullable();
            $table->string('title_seo_post', 120)->nullable();
            $table->text('description_seo_post')->nullable();
            $table->boolean('status')->default(0);
            $table->integer('type')->default(3)->comment("3- Blog, 1- Info, 2- Contact");
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
        Schema::dropIfExists('posts');

    }
}
