<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 12 Jul 2018 22:39:27 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Department
 * 
 * @property int $id
 * @property string $name
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * 
 * @property \Illuminate\Database\Eloquent\Collection $department_translations
 * @property \Illuminate\Database\Eloquent\Collection $job_posters
 */
class Department extends Eloquent
{
	protected $fillable = [];

	public function department_translations()
	{
		return $this->hasMany(\App\Models\DepartmentTranslation::class);
	}

	public function job_posters()
	{
		return $this->hasMany(\App\Models\JobPoster::class);
	}
}