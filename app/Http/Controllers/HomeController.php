<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Home;
use App\Oilga;
use App\Geothermal;
use App\Wind;
use App\Technology;
use App\About;

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
        return view('front.oilgas')->with('data',$data);
    }

    public function geothermal(){
        $data['geothermal'] = Geothermal::findOrFail(1);
        return view('front.geothermal')->with('data',$data);
    }

    public function wind(){
        $data['wind'] = Wind::findOrFail(1);
        return view('front.wind')->with('data',$data);
    }

    public function technologies(){
        $data['technology'] = Technology::findOrFail(1);
        return view('front.technologies')->with('data',$data);
    }

    public function about(){
        $data['about'] = About::findOrFail(1);
        return view('front.about')->with('data',$data);
    }
}
