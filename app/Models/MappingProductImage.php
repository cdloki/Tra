<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MappingProductImage extends Model
{
    protected $table = 'mapping_product_image';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'id_product',
        'main_image',
        'url_image',
    ];


    public function getListMappingProductImage($filter)
    {
        $select = $this->orderBy($this->table . '.id', 'ASC');
        if(!empty($filter["main_image"])) {
            $select->Where('main_image', '=', $filter["main_image"]);
        }
        if(!empty($filter["id_product"])) {
            $select->Where('id_product', '=', $filter["id_product"]);
        }
        if(!empty($filter["main_image"])) {
            $select->Where('main_image', '=', $filter["main_image"]);
        }
        // $select->join('products', 'products.id', '=', $this->table.'.id_product');
        return $select->get();
    }


    // /**
    //  * Lấy chi tiết
    //  *
    //  * @param $id
    //  * @return mixed
    //  */
    // public function getOneRoom($id)
    // {
    //     return $this->select($this->table . '.*')
    //         ->where($this->table . '.' . $this->primaryKey, $id)
    //         ->first();

    // }



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



    // /**
    //  * Chỉnh sửa
    //  *
    //  * @param array $data
    //  *
    //  * @return mixed
    //  */
    // public function edit(array $data)
    // {
    //     $id = $data["id"];
    //     unset($data["id"]);
    //     $this->where($this->primaryKey, $id)->update($data);
    //     return $id;
    // }

    // /**
    //  * Xóa
    //  *
    //  * @param int $id
    //  * @return mixed
    //  */
    public function removeWithIdProduct($id)
    {
        return $this->where("id_product", $id)->delete();
    }


}
