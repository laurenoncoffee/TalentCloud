<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ModifyReferencesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('micro_references', function (Blueprint $table) {
            $table->dropForeign(['experience_level_id']);
            $table->dropIndex(['experience_level_id']);

            $table->dropColumn('experience_level_id');
            $table->dropColumn('observed_from_date');
            $table->dropColumn('observed_until_date');
            $table->renameColumn('story', 'description');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('micro_references', function (Blueprint $table) {
            $table->integer('experience_level_id')->unsigned()->nullable()->index();
            $table->date('observed_from_date')->nullable();
			$table->date('observed_until_date')->nullable();
            $table->renameColumn('description', 'story');
        });

        Schema::table('micro_references', function (Blueprint $table) {
            $table->foreign('experience_level_id')->references('id')->on('experience_levels')->onUpdate('CASCADE')->onDelete('NO ACTION');
        });
    }
}