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
use App\Termandcondition;
use App\Privacypolicy;
use App\Career;
use App\Job;
use App\Partnerpage;
use App\Partner;
use App\Innerpage;
use App\Mainpoint;
use App\Faq;
use App\Contactuspage;
use App\Inquiry;
use App\JobApplication;
use Validator;

class HomeController extends Controller
{
    public function home(){
        $data['home'] = Home::findOrFail(1);
        $data['about'] = About::findOrFail(1);
        $data['partner'] = Partner::all();
        return view('front.home')->with('data',$data);
    }

    public function partner(){
        $data['partnerpage'] = Partnerpage::findOrFail(1);
        $data['partner'] = Partner::all();
        $data['about'] = About::findOrFail(1);
        return view('front.partner')->with('data',$data);
    }

    public function career(){
        $data['career'] = Career::findOrFail(1);
        $data['job'] = Job::all();
        return view('front.career')->with('data',$data);
    }

    public function careerdetail($id){
        $data['career'] = Career::findOrFail(1);
        $data['jobdetail'] = Job::findOrFail($id);
        if($data['jobdetail']){
          $data['job'] = Job::where('id','!=',$id)->get();
          return view('front.careerdetail')->with('data',$data);
        }else{
            abort(404);
        }
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

    public function termandconditions(){
        $data['termandconditions'] = Termandcondition::findOrFail(1);
        return view('front.termandconditions')->with('data',$data);
    }

    public function privacypolicy(){
        $data['privacypolicy'] = Privacypolicy::findOrFail(1);
        return view('front.privacypolicy')->with('data',$data);
    }

    //inner pages
    public function innerpage($slug){
        $data['innerpage'] = Innerpage::where('slug',$slug)->first();
        return view('front.innerpage')->with('data',$data);
    }

    public function faq(){
        $data['faq'] = Faq::all();
        return view('front.faq')->with('data',$data);
    }

    public function contactus(){
        $data['contactus'] = Contactuspage::findOrFail(1);
        return view('front.contactus')->with('data',$data);
    }

    public function contactusStore(Request $request)
    {
        $rules = array(
            'full_name' => 'required',
            'email' => 'required',
            'number' => 'required',
            'address' => 'required',
            'subject' => 'required',
            'message' => 'required',
        );
        $data = [
            'full_name' => trim($request->get('full_name')),
            'email' => trim($request->get('email')),
            'number' => trim($request->get('number')),
            'address' => trim($request->get('address')),
            'subject' => trim($request->get('subject')),
            'message' => trim($request->get('message')),
            ];
        $validator = Validator::make($data,$rules);
        if($validator->fails())
        {
         return  response()->json(['errors'=>$validator->errors()]);
        }else
        {
            $data = New Inquiry;
            $data->full_name = $request->full_name;
            $data->email     = $request->email;
            $data->number = $request->number;
            $data->address = $request->address;
            $data->subject = $request->subject;
            $data->message = $request->message;
            $data->save();
            $success = 'Inquiry send successfully.';
            return response()->json($success);
           
        }
    }

    public function jobApply(Request $request)
    {
        $rules = array(
            'name' => 'required',
            'email' => 'required',
            'cv' => 'required|file|mimes:jpeg,png,pdf|max:2048',
        );
        $data = [
            'name' => trim($request->get('name')),
            'email' => trim($request->get('email')),
            'cv' => $request->cv,
            ];
        $validator = Validator::make($data,$rules);
        if($validator->fails())
        {
         return  response()->json(['errors'=>$validator->errors()]);
        }else
        {
            $data = New JobApplication;
            $data->job_id = $request->job_id;
            $data->name = $request->name;
            $data->email     = $request->email;

            $file = $request->file('cv');
            $fileName = time().'.'.$file->getClientOriginalExtension();
            $filePath = $file->storeAs('uploads', $fileName, 'public');

            $data->cv = $filePath;
            $data->save();
            $success = 'Applied successfully.';
            return response()->json($success);
           
        }
    }


}
