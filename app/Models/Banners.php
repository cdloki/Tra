<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banners extends Model
{
    protected $table = 'banners';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'type_banner',
        'image_banner',
        'url_banner',
        'status',
        'created_at',
        'updated_at',
        'create_by_id',
        'last_modify_by_id',
    ];


    public function getListBanner($filter)
    {
        $select = $this->orderBy($this->table . '.id', 'ASC');
        if(!empty($filter["type_banner"])) {
            $select ->whereIn('type_banner', $filter["type_banner"]);
        }
        return $select->get();
    }


    /**
     * Lấy chi tiết
     *
     * @param $id
     * @return mixed
     */
    public function getOneBanner($id)
    {
        return $this->select($this->table . '.*')
        ->where($this->table . '.' . $this->primaryKey, $id)
        ->first();

    }

    /**
     * Thêm mới
     *
     * @param array $data
     *
     * @return mixed
     */
    public function store(array $data)
    {
        return $this->insert($data);
    }



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
