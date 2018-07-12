<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSkillLevelTranslationsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('skill_level_translations', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('skill_level_id')->unsigned()->index();
			$table->string('locale', 50);
			$table->string('value', 65);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('skill_level_translations');
	}

}
