<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInterestsTable extends Migration
{
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
  {
    Schema::create('interests', function (Blueprint $table) {
      $table->increments('id');
      $table->timestamps();
      $table->string('name')->unique();
      $table->integer('category_id');
      $table->integer('hits')->default(1);


      // $table->foreign('category_id')->references('id')
      //   ->on('categories')->onDelete('cascade');
    });
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down()
  {
    Schema::dropIfExists('interests');
  }
}
