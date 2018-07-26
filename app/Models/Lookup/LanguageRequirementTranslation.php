<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 12 Jul 2018 22:39:27 +0000.
 */

namespace App\Models\Lookup;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class LanguageRequirementTranslation
 * 
 * @property int $id
 * @property string $locale
 * @property int $language_requirement_id
 * @property string $value
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * 
 * @property \App\Models\Lookup\LanguageRequirement $language_requirement
 */
class LanguageRequirementTranslation extends Eloquent {

    protected $casts = [
        'language_requirement_id' => 'int'
    ];
    protected $fillable = [];

    public function language_requirement() {
        return $this->belongsTo(\App\Models\Lookup\LanguageRequirement::class);
    }

}