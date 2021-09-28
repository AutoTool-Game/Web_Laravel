<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class SocialController extends Controller
{
    public function redirectGoogle(){
        return Socialite::driver('google')->redirect();
    }

    public function processGoogleLogin(){
        $googleUser = Socialite::driver('google')->user();
        if(!$googleUser){
            return redirect('/login');
        }

        $systemUser = User::firstOrCreate(
            ['google_id' => $googleUser->id],
            [
                'name' => $googleUser->name,
                'username' => 'google_'.$googleUser->id,
                'email' => $googleUser->email
            ]
        );

        Auth::loginUsingId($systemUser->id);
        return redirect('/home');
    }
}
