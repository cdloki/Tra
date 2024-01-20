<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class User extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('roles', function (Blueprint $table) {
            $table->id();
            $table->string('name_role', 120);
            $table->string('route', 120);
            $table->text('description_role')->nullable();
            $table->timestamps();
        });
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('user_name', 120);
            $table->string('password', 120);
            $table->string('name_user', 120);
            $table->string('sex_user', 120);
            $table->string('email_user', 120);
            $table->string('phone_user', 120);
            $table->string('position_user', 120);
            $table->tinyInteger('users_active');
            $table->timestamps();
            $table->string('create_by_id', 120)->nullable();
            $table->string('last_modify_by_id', 120)->nullable();
        });
        Schema::create('mapping_role_user', function (Blueprint $table) {
            $table->id();
            $table->integer('id_role');
            $table->integer('id_user');
            $table->tinyInteger('active');
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
        Schema::dropIfExists('roles');
        Schema::dropIfExists('users');
        Schema::dropIfExists('mapping_role_user');

    }
}
