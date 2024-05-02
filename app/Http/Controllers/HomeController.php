<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Home;
use App\Oilga;
use App\Technology;

class HomeController extends Controller
{
    public function home(){
        $data['home'] = Home::findOrFail(1);
        return view('front.home')->with('data',$data);
    }

    public function partner(){

        return view('front.partner');
    }

    public function career(){

        return view('front.career');
    }

    public function oilgas(){
        $data['oilgas'] = Oilga::findOrFail(1);
        $data['technology'] = Technology::all();
        return view('front.oilgas')->with('data',$data);
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
