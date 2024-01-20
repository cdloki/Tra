<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rooms extends Model
{
    protected $table = 'rooms';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'code_room',
        'name_room',
        'url_room',
        'image_room',
        'description_room',
        'keyword_seo_room',
        'title_seo_room',
        'description_seo_room',
        'status',
        'created_at',
        'updated_at',
        'create_by_id',
        'last_modify_by_id',
    ];


    public function getListRoom($filter)
    {
        $select = $this->orderBy($this->table . '.id', 'ASC');
        if(!empty($filter["status"])) {
            $select->Where($this->table.'.status', '=', $filter["status"]);
        }
        if(!empty($filter["url_room"])) {
            $select->Where($this->table.'.url_room', '=', $filter["url_room"]);
        }
        return $select->get();
    }


    /**
     * Lấy chi tiết
     *
     * @param $id
     * @return mixed
     */
    public function getOneRoom($id)
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
        return $this->create($data)->{$this->primaryKey};
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

    /**
     * Xóa
     *
     * @param int $id
     * @return mixed
     */
    public function remove($id)
    {
        return $this->where($this->primaryKey, $id)->delete();
    }

}
