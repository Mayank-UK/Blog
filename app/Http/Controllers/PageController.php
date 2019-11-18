<?php

//namespace keyword defines the namespace name of this file so that it can be auto imported using the use keyword
namespace App\Http\Controllers;


//use keyword helps in auto importing the classes defined under the namespace
use Illuminate\Http\Request;

class PageController extends Controller
{
    //
    public function home()
    {
        return view('home');
    }
    
    public function about()
    {
        return view('about');
    }
    
    public function contact()
    {
        return view('contact');
    }
    
}
