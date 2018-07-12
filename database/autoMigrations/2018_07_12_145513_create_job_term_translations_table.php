<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateJobTermTranslationsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('job_term_translations', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('job_term_id')->unsigned()->index();
			$table->string('value', 45)->nullable();
			$table->string('locale', 50);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('job_term_translations');
	}

}
