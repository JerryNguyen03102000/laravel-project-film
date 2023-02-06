<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;


class LoginController extends Controller
{
    public function FormLogin()
    {
        if(Auth::check()){
            return redirect(route('admin.main'));
        }
        return view('admin.login', [
            'title' => 'Đăng nhập hệ thống'
        ]);
    }

    public function StoreLogin(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6'
        ], [
            'email.required' => 'Vui lòng nhập tài khoản',
            'email.email' => 'Vui lòng nhập đúng địa chỉ email',
            'password.required' => 'Vui lòng nhập mật khẩu',
            'password.min' => 'Mật khẩu tối thiểu 6 kí tự',

        ]);
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            //remember me
            $remember = $request->remember;
            if ($remember) {
                setcookie('login_email', $request->email, time() + (86400 * 365));
                setcookie('login_password', $request->password, time() + (86400 * 365));
            } else {
                setcookie('login_email', $request->email, time() - 3600);
                setcookie('login_password', $request->password, time() - 3600);
            }
            return redirect()->route('admin.main');
        } else {
            return redirect()->route('admin-login')->with('error', 'Tài khoản hoặc mật khẩu bị sai,Vui lòng thử lại!');
        }
    }

    public function logout()
    {
        Auth::logout();
        Session::flush();
        return redirect()->route('admin-login');
    }
}
