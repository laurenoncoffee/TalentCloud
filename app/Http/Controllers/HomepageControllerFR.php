<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Lang;
use App\Http\Controllers\Controller;

class HomepageControllerFR extends Controller {

    /**
     * Show the home page
     * @return \Illuminate\Http\Response
     */
    public function __invoke() {
        return view('applicant/home', ['home.fr' => Lang::get('applicant/home'),
            'hero' => Lang::get('common/hero')]);
    }

}
