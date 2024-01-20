<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MappingRoomCategory extends Model
{
    protected $table = 'mapping_room_category';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'id_room',
        'id_category',
    ];


    public function getListMappingRoomCategory($filter)
    {
        $select = $this->orderBy($this->table . '.id', 'ASC');
        if(!empty($filter["id_category"])) {
            $select->Where('id_category', '=', $filter["id_category"]);
        }
        if(!empty($filter["id_room"])) {
            $select->Where('id_room', '=', $filter["id_room"]);
        }
        $select->join('rooms', 'rooms.id', '=', $this->table.'.id_room');
        $select->join('categorys', 'categorys.id', '=', $this->table.'.id_category');
        if(!empty($filter["paginate"])) {
            return $select->paginate(20);
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
    public function removeWithIdRoom($id)
    {
        return $this->where("id_room", $id)->delete();
    }
    public function removeWithIdCategory($id)
    {
        return $this->where("id_category", $id)->delete();
    }

}
