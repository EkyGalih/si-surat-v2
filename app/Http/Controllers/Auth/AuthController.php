<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $credential = [
            'username' => $request->username,
            'password' => $request->password,
        ];

        $user = User::where('username', '=', $request->username)->first();
        if ($user) {
            if ($user->active == '0') {
                return redirect()->back()->with(['failed' => 'mohon maaf, akun anda telah ditangguhkan, silahkan menghubungi operator kami untuk pemulihan akun!'])->withInput($request->all());
            }
        }

        if (Auth::attempt($credential, $request->remember_me)) {
            if ($user->level == 'admin') {
                return redirect()->route('admin-beranda');
            } elseif ($user->level == 'pimpinan') {
                return redirect()->route('pimpinan-beranda');
            } elseif ($user->level == 'agendaris') {
                return redirect()->route('agendaris-beranda');
            } elseif ($user->level == 'user') {
                return redirect()->route('user-beranda');
            }
        }

        return redirect()->back()->with(['failed' => 'Login gagal, pastikan username dan password anda benar'])->withInput($request->all);
    }
}
