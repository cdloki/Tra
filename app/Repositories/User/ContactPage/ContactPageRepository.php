<?php

namespace App\Repositories\User\ContactPage;

use App\Repositories\User\ContactPage\ContactPageRepositoryInterface;
use App\Models\Posts;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ContactPageRepository implements ContactPageRepositoryInterface
{
    protected $tContactPost;


    public function __construct(
        Posts $tContactPost


    )
    {
        $this->tContactPost = $tContactPost;
    }

    // public function countProduct($id){
    //     $filter["id_category"] = $id;
    //     return $this->tMappingCategoryProduct->getListMappingCategoryProduct($filter)->count();
    // }

    // public function getImageProduct($id){
    //     $filter["id_category"] = $id;
    //     $filter["main_image"] = 1;
    //     return $this->tMappingProductImage->getListMappingProductImage($filter)->first();
    // }

    public function getDataContact($filter)
    {
        $filter["type"] = 2;
        $filter["status"] = 1;
        $data = $this->tContactPost->getListPost($filter)->first();
        return $data;
    }

    // public function getDataPost($filter)
    // {
    //     $filter["type"] = 3;
    //     $filter["status"] = 1;
    //     $data = $this->tDiscountPost->getListPost($filter);
    //     return $data;
    // }

    // public function getDataProduct($filter)
    // {
    //     $data = $this->tProduct->getListProduct($filter);

    //     foreach($data as $key => $item) {
    //         $data[$key]["image_product"] = $this->getImageProduct($item['id']);
    //     }
    //     return $data;
    // }

}
