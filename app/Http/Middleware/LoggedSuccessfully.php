<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use RealRashid\SweetAlert\Facades\Alert;

use Closure;
use Illuminate\Http\Request;

class LoggedSuccessfully
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
        if(Auth::guard('users')->check() == true)
        {
        return redirect('/admins/dashboard');
        } else{
            return $next($request);
        }
    }

}
