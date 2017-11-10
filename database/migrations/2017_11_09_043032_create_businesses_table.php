<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBusinessesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('businesses', function (Blueprint $table) {
            $table->increments('id');
            $table->string('listing_id');
            $table->integer('transction_type_id');
            $table->string('title');
            $table->text('description');
            $table->decimal('ticket_size_min', 10, 0);
            $table->decimal('ticket_size_max', 10, 0);
            $table->integer('status_id');
            $table->integer('detail_id');
            $table->integer('transaction_type_detail_id');
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
        Schema::dropIfExists('businesses');
    }
}
