<?php

namespace App\Repositories\User\AboutPage;

use App\Repositories\User\AboutPage\AboutPageRepositoryInterface;
use App\Models\Posts;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AboutPageRepository implements AboutPageRepositoryInterface
{
    protected $tAboutPage;


    public function __construct(
        Posts $tAboutPage


    )
    {
        $this->tAboutPage = $tAboutPage;
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

    public function getDataAbout($filter)
    {
        $filter["type"] = 1;
        $filter["status"] = 1;
        $data = $this->tAboutPage->getListPost($filter)->first();
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
