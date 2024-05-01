<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home(){

        return view('front.home');
    }

    public function partner(){

        return view('front.partner');
    }

    public function career(){

        return view('front.career');
    }

    public function oilgas(){

        return view('front.oilgas');
    }

    public function geothermal(){

        return view('front.geothermal');
    }

    public function energy(){

        return view('front.energy');
    }

    public function technologies(){

        return view('front.technologies');
    }

    public function about(){

        return view('front.about');
    }
}
