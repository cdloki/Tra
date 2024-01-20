<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class MappingProductImage extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mapping_product_image', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_product');
            $table->integer('main_image')->default(0);
            $table->text('url_image');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mapping_product_image');

    }
}
