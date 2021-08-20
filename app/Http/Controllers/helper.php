<?php

namespace App\Http\Controllers;

use App\Providers\RouteServiceProvider;
use App\Notifications\NewNotification;
use Illuminate\Http\Request;
use Notification;
use App\User;
use Auth;

class helper extends Controller
 { 

   public function __construct()
    {
     $this->middleware('auth');
    }
 
   public function index()
    {
     return view('welcome');
    }
    
   public function helper(Request $request)
    {
    
    $name = $request->input('name');
   	$description = $request->input('description');

    $data = Auth::User(
   	$message = [
       'name' => $name,
       'body' => $description,
        ]);
  

    Notification::send($data, new NewNotification($message);
    
    dd('Notification has been sent!');
  
    return view('home');
    }
}
?>