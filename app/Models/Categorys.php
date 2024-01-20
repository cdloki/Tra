<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorys extends Model
{
    protected $table = 'categorys';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'code_category',
        'name_category',
        'url_category',
        'image_category',
        'description_category',
        'keyword_seo_category',
        'title_seo_category',
        'description_seo_category',
        'status',
        'created_at',
        'updated_at',
        'create_by_id',
        'last_modify_by_id',
    ];


    public function getListCategory($filter)
    {
        $select = $this->orderBy($this->table . '.id', 'ASC');
        if(!empty($filter["status"])) {
            $select->Where($this->table.'.status', '=', $filter["status"]);
        }
        if(!empty($filter["url_category"])) {
            $select->Where($this->table.'.url_category', '=', $filter["url_category"]);
        }
        return $select->get();
    }


    /**
     * Lấy chi tiết
     *
     * @param $id
     * @return mixed
     */
    public function getOneCategory($id)
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
