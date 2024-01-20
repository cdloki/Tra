<?php

namespace App\Repositories\Admin\Users;

use App\Repositories\Admin\Users\UsersRepositoryInterface;
use App\Models\Users;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class UsersRepository implements UsersRepositoryInterface
{
    protected $tUsers;


    public function __construct(
        Users $tUsers
        )
    {
        $this->tUsers = $tUsers;
    }

    public function updateUsers($data)
    {
        DB::beginTransaction();
        try {
            if($data['setPassword'] != null ) {
                $dataPassWord['password'] = bcrypt($data['setPassword']);

            } else {
                unset($data['setPassword']);
            }
            $dataPassWord['id'] = Auth::guard('users')->user()->id;
            $id = $this->tUsers->edit($dataPassWord);
            DB::commit();
            return [
                'error' => false,
                'message' => __('Cập nhật thành công!'),
                'id' => $id,
            ];
        } catch (\Exception $exception) {
            DB::rollBack();
            return [
                'error' => true,
                'message' => __('Cập nhật thất bại!')
            ];
        }
    }
}
