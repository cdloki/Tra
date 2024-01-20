<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Redirect;

use Closure;
use Illuminate\Http\Request;

class CheckLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if(Auth::guard('users')->check() == True ){
            return $next($request);
        }else{
            // alert()->warning('Không thể truy cập!', 'Bạn phải đăng nhập để truy cập trang này.');
            toast(' Bạn Chưa Đăng Nhập!','error','Bạn phải đăng nhập để truy cập trang này.');
            return Redirect::to('admins/login');
        }
    }

}
