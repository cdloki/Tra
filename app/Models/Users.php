<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    protected $table = 'users';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'user_name',
        'password',
        'name_user',
        'sex_user',
        'email_user',
        'phone_user',
        'position_user',
        'users_active',
        'created_at',
        'updated_at',
        'create_by_id',
        'last_modify_by_id',
    ];


    // public function getListSlider($filter)
    // {
    //     $select = $this->orderBy($this->table . '.location_slider', 'ASC');
    //     if(!empty($filter["status"])) {
    //         $select->Where($this->table.'.status', '=', $filter["status"]);
    //     }
    //     return $select->get();
    // }


    // /**
    //  * Lấy chi tiết
    //  *
    //  * @param $id
    //  * @return mixed
    //  */
    // public function getOneSlider($id)
    // {
    //     return $this->select($this->table . '.*')
    //         ->where($this->table . '.' . $this->primaryKey, $id)
    //         ->first();

    // }



    // /**
    //  * Thêm mới
    //  *
    //  * @param array $data
    //  *
    //  * @return mixed
    //  */
    // public function store(array $data)
    // {
    //     return $this->create($data)->{$this->primaryKey};
    // }



    /**
     * Chỉnh sửa
     *
     * @param array $data
     *
     * @return mixed
     */
    public function edit(array $data)
    {
        $id = $data["id"];
        unset($data["id"]);
        $this->where($this->primaryKey, $id)->update($data);
        return $id;
    }

    // /**
    //  * Xóa
    //  *
    //  * @param int $id
    //  * @return mixed
    //  */
    // public function remove($id)
    // {
    //     return $this->where($this->primaryKey, $id)->delete();
    // }

}
