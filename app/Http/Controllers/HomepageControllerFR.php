<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\App;
use App\Http\Controllers\Controller;

class HomepageControllerFR extends Controller {

    /**
     * Show the home page
     * @return \Illuminate\Http\Response
     */
    public function __invoke() {
        App::setlocale('fr');
        return view('applicant/home', [
            'home' => Lang::get('applicant/home'),
            'hero' => Lang::get('common/hero')]);
    }

}
