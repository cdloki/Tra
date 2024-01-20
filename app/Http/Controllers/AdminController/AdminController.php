<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use RealRashid\SweetAlert\Facades\Alert;
use App\Repositories\LoginUsers\LoginUsersRepositoryInterface;
class AdminController extends Controller
{
    public function index()
    {
        return view('admin-layouts.pages.dashboard');
    }

    public function login()
    {
        return view('admin-layouts.login.login');
    }

      //Login
    public function checkLogin(Request $request)
    {
        $arr = [
            'user_name' => $request-> user_name,
            'password' => $request-> password,
        ];
        if(Auth::guard('users')->attempt($arr) && Auth::guard('users')->user()->users_active == 1) {
            // $codeUsers = Auth::guard('users')->user()->code;
            // $this->rLoginUsers->updateRoleInRoleUsersTable($codeUsers);

            // session()->put('admin-users', $arr['user_name']);
            // Đăng nhập thành công thì update lại quyền cho user
            //
            return Redirect::to('/admins/dashboard');
        }else{
            $request->session()->flush();
            // alert()
            // ->warning('Đăng Nhập không thành công!', 'Tài khoản hoặc mật khẩu chưa đúng.');
            toast('Đăng Nhập không thành công!','error','Tài khoản hoặc mật khẩu chưa đúng.');
            return Redirect::to('admins/login');
        }
    }

    public function loginOut(Request $request)
    {
        $request->session()->flush();
        return Redirect::to('admins/login');
    }
}
