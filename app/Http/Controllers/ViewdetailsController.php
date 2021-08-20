<?php

namespace App\Http\Controllers;
use App\Product;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests;
class ViewdetailsController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
    } 
    
    public function index(){
$users = DB::table('notifications')->select('id', 'data')->get();
return view('notificationview')->with('users', $users);

}
}
