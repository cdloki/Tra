<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{
    protected $table = 'posts';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'code_post',
        'name_post',
        'url_post',
        'image_post',
        'description_post',
        'content_post',
        'keyword_seo_post',
        'title_seo_post',
        'description_seo_post',
        'status',
        'type',
        'created_at',
        'updated_at',
        'create_by_id',
        'last_modify_by_id',
    ];


    public function getListPost($filter)
    {

        $select = $this->orderBy($this->table . '.id', 'ASC');
        if(!empty($filter["status"])) {
            $select->Where($this->table.'.status', '=', $filter["status"]);
        }
        if(!empty($filter["type"])) {
            $select->Where($this->table.'.type', '=', $filter["type"]);
        }
        if(!empty($filter["url_post"])) {
            $select->Where($this->table.'.url_post', '=', $filter["url_post"]);
        }
        if(!empty($filter["keyword"])) {
            $select->Where($this->table.'.name_post', 'like', '%' . $filter["keyword"] . '%');

        }
        if(!empty($filter["paginate"])) {
            return $select->paginate(20);
        } else {
            return $select->get();
        }
    }


    /**
     * Lấy chi tiết
     *
     * @param $id
     * @return mixed
     */
    public function getOnePost($id)
    {
        return $this->select($this->table . '.*')
            ->where($this->table . '.' . $this->primaryKey, $id)
            ->first();

    }

    /**
     * Lấy chi tiết
     *
     * @param $type
     * @return mixed
     */
    public function getOnePostWithType($type)
    {
        return $this->select($this->table . '.*')
            ->where('type', $type)
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
