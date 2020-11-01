<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddInfoToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->enum('sex', [1,2,3])->default('2');
            $table->string('avatar')->nullable();
            $table->string('interest')->nullable();
            $table->string('yawp')->nullable();
            $table->string('profession')->nullable();
            $table->string('address')->nullable();
            $table->string('qq')->nullable();
            $table->string('phone')->nullable();
            $table->string('identitycard')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('sex');
            $table->dropColumn('avatar');
            $table->dropColumn('interest');
            $table->dropColumn('yawp');
            $table->dropColumn('profession');
            $table->dropColumn('address');
            $table->dropColumn('qq');
            $table->dropColumn('phone');
            $table->dropColumn('identitycard');
        });
    }
}
