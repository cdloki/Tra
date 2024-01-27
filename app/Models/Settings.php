<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
    protected $table = 'settings';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'title_website',
        'facebook_social_website',
        'googleanaly_social_website',
        'messenger_social_website',
        'color_general_website',
        'fontsize_general_website',
        'icon_general_website',
        'logo_general_website',
        'colorbg_general_website',
        'keyword_seo_website',
        'title_seo_website',
        'description_seo_website',
        'image_seo_website',
        'zalo_website',
        'facebook_website',
        'fanpage_website',
        'group_website',
        'youtube_website',
        'tiktok_website',
        'phone_website',
        'address_website',
        'email_website',
        'shoppe_website',
        'google_site_verification',
        'created_at',
        'updated_at',
        'create_by_id',
        'last_modify_by_id',
    ];


    // public function getListSetting($filter)
    // {
    //     $select = $this->orderBy($this->table . '.id', 'ASC');
    //     if(!empty($filter["status"])) {
    //         $select->Where($this->table.'.status', '=', $filter["status"]);
    //     }
    //     return $select->get();
    // }


    /**
     * Lấy chi tiết
     *
     * @param $id
     * @return mixed
     */
    public function getOneSetting()
    {
        return $this->select($this->table . '.*')
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
