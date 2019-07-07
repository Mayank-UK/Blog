<?php

//namespaces dont import anything you fool,but instead they define a namespace for a class separate from the global namespace so that this class can be used with use keyword by auto importing it
namespace App\Http\Controllers;


//use keyword don't just import directory but import classes using namespace defined in those files, ypu ypu got it, the directory structure with use is not a directory but actually the namespaces that we have defined in the classes
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
}
