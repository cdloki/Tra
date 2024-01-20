<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sliders extends Model
{
    protected $table = 'sliders';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'keyword_slider',
        'description_slider',
        'image_slider',
        'tbutton_slider',
        'cbutton_slider',
        'url_slider',
        'status',
        'location_slider',
        'created_at',
        'updated_at',
        'create_by_id',
        'last_modify_by_id',
    ];


    public function getListSlider($filter)
    {
        $select = $this->orderBy($this->table . '.location_slider', 'ASC');
        if(!empty($filter["status"])) {
            $select->Where($this->table.'.status', '=', $filter["status"]);
        }
        return $select->get();
    }


    /**
     * Lấy chi tiết
     *
     * @param $id
     * @return mixed
     */
    public function getOneSlider($id)
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
