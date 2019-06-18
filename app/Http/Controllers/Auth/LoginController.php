<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
Use App\User;
use Illuminate\Http\Request;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers {
        logout as performLogout;
    }


    
    
    protected $redirectTo = '/';

   
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
  
    // public function username(){
    //     return 'email';
    // }

    public function logout(Request $request)
    {
        // do the normal logout
        $this->performLogout($request);
        
        // redirecto to sso
        return redirect('/login');
    }

    public function programaticallyEmployeeLogin(Request $request, $no_hp=null, $email=null)
    {
        // $personnel_no   = base64_decode($personnel_no);
        // $email          = base64_decode($email);
        $no_hps          = base64_decode($no_hp);
        $emails          = base64_decode($email);
        

        $userlogin  = User::where('email', $emails)->first();
        if(!is_null($userlogin))
        {
            Auth::loginUsingId($userlogin->id);
            return redirect('/kuesioner');
        }
        else
        {
            return 'User Not Found!';
        }
    }
}
