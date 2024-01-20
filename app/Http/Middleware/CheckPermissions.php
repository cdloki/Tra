<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use RealRashid\SweetAlert\Facades\Alert;
use App\Models\RoleUsersTable;
use Illuminate\Support\Facades\Redirect;

use Closure;
use Illuminate\Http\Request;

class CheckPermissions
{
    protected $tRoleUsers;

    public function __construct(
        RoleUsersTable $tRoleUsers

        )
    {
        $this->tRoleUsers = $tRoleUsers;

    }

    // public function getListWithUserCode($user_code)
    // {
    //     return
    // }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $routeName = $request->route()->getName();
        $codeUsers = Auth::guard('users')->user()->code;
        $permisssions = $this->tRoleUsers->checkPermissionsWithUserCode($codeUsers, $routeName);
        $method = $request->method();
        if( !empty($permisssions) && $permisssions->active == 1 || $method == "POST" ) {
            return $next($request);
        } else {
            Alert::warning('Không thể truy cập!', 'Bạn không có quyền truy cập trang này.');

            return Redirect::to('/admins');
        }
    }

}
