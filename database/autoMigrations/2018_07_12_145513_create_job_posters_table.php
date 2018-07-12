<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateJobPostersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('job_posters', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('job_term_id')->unsigned()->index();
			$table->string('term_qty', 5);
			$table->integer('job_level_id_min')->unsigned()->index();
			$table->integer('job_level_id_max')->unsigned()->index();
			$table->dateTime('open_date_time');
			$table->dateTime('close_date_time');
			$table->dateTime('start_date_time');
			$table->integer('department_id')->unsigned()->index();
			$table->integer('province_id')->unsigned()->index();
			$table->integer('salary_min')->nullable();
			$table->integer('salary_max')->nullable();
			$table->integer('noc');
			$table->string('classification', 8);
			$table->integer('security_clearance_id')->unsigned()->index();
			$table->integer('language_requirement_id')->unsigned()->index();
			$table->integer('manager_id')->unsigned()->index();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('job_posters');
	}

}
