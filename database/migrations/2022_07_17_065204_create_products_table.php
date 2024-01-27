<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('code_product', 120);
            $table->string('name_product', 120);
            $table->string('url_product', 120);
            $table->text('image_product')->nullable();
            $table->text('description_product')->nullable();
            $table->text('specifications')->nullable()->comment("Thông số kĩ thuật");
            $table->string('warranty', 120)->nullable()->comment("Bảo hành");
            $table->string('time_warranty', 120)->nullable()->comment("Thời gian Bảo hành");
            $table->text('note')->nullable()->comment("Lưu Ý");
            $table->text('gift')->nullable()->comment("Quà tặng");
            $table->string('price', 120)->default(0)->nullable()->comment("Giá bán");
            $table->string('cost', 120)->default(0)->nullable()->comment("Giá gốc");
            $table->text('element_product')->nullable();
            $table->text('shopee_url')->nullable();
            // $table->string('title_seo_product', 120)->nullable();
            // $table->text('description_seo_product')->nullable();
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
        Schema::dropIfExists('products');
    }
}
