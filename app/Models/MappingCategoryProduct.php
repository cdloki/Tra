<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MappingCategoryProduct extends Model
{
    protected $table = 'mapping_category_product';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'id_product',
        'id_category',
    ];


    public function getListMappingCategoryProduct($filter)
    {
        $select = $this->orderBy($this->table . '.id', 'ASC');
        if(!empty($filter["id_category"])) {
            $select->Where('id_category', '=', $filter["id_category"]);
        }
        if(!empty($filter["id_product"])) {
            $select->Where('id_product', '=', $filter["id_product"]);
        }
        if(!empty($filter["status"])) {
            $select->Where('products.status', '=', $filter["status"]);
        }

        if(!empty($filter["in_id_product"])) {
            $select->whereIn('id_product',$filter["in_id_product"]);
        }
        if(!empty($filter["in_id_category"])) {
            $select->whereIn('id_category', $filter["in_id_category"]);
        }
        $select->join('products', 'products.id', '=', $this->table.'.id_product');
        $select->join('categorys', 'categorys.id', '=', $this->table.'.id_category');

        if(!empty($filter["paginate"])) {
            return $select->paginate(12);
        } else {
            return $select->get();
        }

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
    public function removeWithIdCategory($id)
    {
        return $this->where("id_category", $id)->delete();
    }

}
