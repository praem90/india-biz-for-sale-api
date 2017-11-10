<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBusinessDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('business_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('owner_id');
            $table->integer('business_type_id');
            $table->integer('industry_id');
            $table->integer('address_id');
            $table->text('reason');
            $table->decimal('last_year_turnover', 10, 0);
            $table->decimal('last_year_profit', 10, 0);
            $table->decimal('ebtia', 10, 0);
            $table->smallInteger('verification_status_id');
            $table->smallInteger('status_id');
            $table->timestamp('activated_at');
            $table->timestamps();
        });
        
        DB::statement('ALTER business_details ADD year_of_found YEAR' );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('business_details');
    }
}
