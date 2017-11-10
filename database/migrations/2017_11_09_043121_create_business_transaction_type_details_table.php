<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBusinessTransactionTypeDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('business_transaction_type_details', function (Blueprint $table) {
            $table->increments('id');
            $table->string('company_reputation');
            $table->integer('number_of_directors');
            $table->string('legal_entity_information');
            $table->string('franchise_name');
            $table->decimal('licensing_fee', 10, 0);
            $table->decimal('royalty_fee', 10, 0);
            $table->decimal('market_value', 10, 0);
            $table->integer('asset_type_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('business_transaction_type_details');
    }
}
