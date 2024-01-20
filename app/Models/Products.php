<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $table = 'products';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'code_product',
        'name_product',
        'url_product',
        'image_product',
        'description_product',
        'specifications',
        'warranty',
        'time_warranty',
        'note',
        'gift',
        'price',
        'cost',
        'element_product',
        'status',
        'created_at',
        'updated_at',
        'create_by_id',
        'last_modify_by_id',
    ];


    public function getListProduct($filter)
    {
        $select = $this->orderBy($this->table . '.id', 'ASC');
        if(!empty($filter["status"])) {
            $select->Where($this->table.'.status', '=', $filter["status"]);
        }
        if(!empty($filter["keyword"])) {
            $select->Where($this->table.'.name_product', 'like', '%' . $filter["keyword"] . '%');

        }
        if(!empty($filter["url_product"])) {
            $select->Where($this->table.'.url_product', '=', $filter["url_product"]);
        }
        // $select->Rightjoin('mapping_product_image', 'mapping_product_image.id_product', '=', $this->table.'.id');
        // $select->groupBy($this->table.'.id');
        return $select->get();
    }


    /**
     * Lấy chi tiết
     *
     * @param $id
     * @return mixed
     */
    public function getOneProduct($id)
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
