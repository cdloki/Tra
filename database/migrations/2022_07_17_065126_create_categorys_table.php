<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategorysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categorys', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('code_category', 120);
            $table->string('name_category', 120);
            $table->string('url_category', 120);
            $table->text('image_category')->nullable();
            $table->text('description_category')->nullable();
            $table->string('keyword_seo_category', 120)->nullable();
            $table->string('title_seo_category', 120)->nullable();
            $table->text('description_seo_category')->nullable();
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
        Schema::dropIfExists('categorys');
    }
}
