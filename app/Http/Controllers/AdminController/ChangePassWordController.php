<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;

use App\Repositories\Admin\Users\UsersRepositoryInterface;

use Illuminate\Http\Request;

class ChangePassWordController  extends Controller
{
    protected $rUser;
    public function __construct(

        UsersRepositoryInterface $rUser
    )
    {
        $this->rUser = $rUser;
    }

    public function edit()
    {

        return view('admin-layouts.pages.change-passs.edit');
    }


    public function update(Request $request)
    {
        $dataPassWord = $request->all();
        return $this->rUser->updateUsers($dataPassWord);
    }

}
