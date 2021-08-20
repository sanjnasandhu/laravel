<?php

namespace App\Http\Controllers;

use App\Product;
use App\User;
use App\Notifications\productNotification;
use Illuminate\Support\Facades\Notification;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\Request;

class ProductController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
    } 

     public function index()
    {
        return view('welcome');
    }

    public function store(Request $request){
        $name= $request->input('name');
        $description = $request->input('description');
        $user = User::all();
        $newmessage = [
          'name' => $name,
          'description' => $description,
        ];
        Notification::send($user, new productNotification($newmessage));
         return view('notificationtable');
        // dd("notification send");
        // return back()->with('status','product added successfully');

    }
    
}
