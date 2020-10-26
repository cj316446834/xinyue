<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('reid')->default(0)->comment('上级栏目ID');
            $table->integer('topid')->default(0)->comment('上级栏目ID');
            $table->string('name')->comment('栏目名称');
            $table->text('description')->nullable()->comment('描述');
            $table->integer('sortrank')->default(0)->comment('排序');
            $table->string('image')->nullable()->comment('缩略图');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
}
