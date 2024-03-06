<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Settings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title_website', 120)->nullable();
            $table->string('facebook_social_website', 120)->nullable();
            $table->string('googleanaly_social_website', 120)->nullable();
            $table->string('messenger_social_website', 120)->nullable();
            $table->string('color_general_website', 120)->nullable();
            $table->string('zalo_website', 120)->nullable();
            $table->string('facebook_website', 120)->nullable();
            $table->string('email_website', 120)->nullable();
            $table->string('address_website', 120)->nullable();
            $table->string('shoppe_website', 120)->nullable();
            $table->string('fanpage_website', 120)->nullable();
            $table->string('group_website', 120)->nullable();
            $table->string('youtube_website', 120)->nullable();
            $table->string('tiktok_website', 120)->nullable();
            $table->string('phone_website', 120)->nullable();
            $table->string('fontsize_general_website', 120)->nullable();
            $table->text('icon_general_website')->nullable();
            $table->text('logo_general_website')->nullable();
            $table->string('colorbg_general_website', 120)->nullable();
            $table->string('keyword_seo_website', 120)->nullable();
            $table->string('title_seo_website', 120)->nullable();
            $table->text('description_seo_website')->nullable();
            $table->text('image_seo_website')->nullable();
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
        Schema::dropIfExists('settings');
    }
}
