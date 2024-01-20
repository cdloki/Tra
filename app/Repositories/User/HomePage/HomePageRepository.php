<?php

namespace App\Repositories\User\HomePage;

use App\Repositories\User\HomePage\HomePageRepositoryInterface;
use App\Models\Categorys;
use App\Models\Rooms;
use App\Models\Sliders;
use App\Models\Banners;

// use App\Models\MappingRoomCategory;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\MappingCategoryProduct;
use App\Models\MappingRoomCategory;
use App\Models\MappingProductImage;
use App\Models\Posts;

use Carbon\Carbon;
use App\Models\Products;

class HomePageRepository implements HomePageRepositoryInterface
{
    protected $tCategory;
    protected $tRoom;
    // protected $tMappingRoomCategory;
    protected $tMappingCategoryProduct;
    protected $tMappingRoomCategory;
    protected $tMappingProductImage;
    protected $tDiscountPost;
    protected $tSlider;
    protected $tBanner;

    public function __construct(
        Categorys $tCategory,
        Products $tProduct,
        Rooms $tRoom,
        Sliders $tSlider,
        MappingCategoryProduct $tMappingCategoryProduct,
        MappingProductImage $tMappingProductImage,
        MappingRoomCategory $tMappingRoomCategory,
        Posts $tDiscountPost,
        Banners $tBanner



    )
    {
        $this->tProduct = $tProduct;
        $this->tRoom = $tRoom;
        $this->tDiscountPost = $tDiscountPost;
        $this->tCategory = $tCategory;
        $this->tMappingRoomCategory = $tMappingRoomCategory;
        $this->tMappingCategoryProduct = $tMappingCategoryProduct;
        $this->tMappingProductImage = $tMappingProductImage;
        $this->tSlider = $tSlider;
        $this->tBanner = $tBanner;

    }

    public function countProduct($id){
        $filter["id_category"] = $id;
        $filter["status"] = 1;
        return $this->tMappingCategoryProduct->getListMappingCategoryProduct($filter)->count();
    }

    public function getImageProduct($id){
        $filter["id_product"] = $id;
        $filter["main_image"] = 1;
        $data = $this->tMappingProductImage->getListMappingProductImage($filter);
        if ($data->isEmpty()) {
            $data[0] = [
            "id" => null,
            "id_product" => null,
            "main_image" => null,
            "url_image" => null,
          ];
        }
        return $data;
    }



    public function getDataCategory($filter)
    {
        $filter["status"] = 1;
        $data = $this->tCategory->getListCategory($filter);
        foreach($data as $key => $item) {
            $data[$key]["total_product"] = $this->countProduct($item['id']);
        }
        return $data;
    }

    public function getDataPost($filter)
    {
        $filter["type"] = 3;
        $filter["status"] = 1;
        $data = $this->tDiscountPost->getListPost($filter);
        return $data;
    }

    public function getDataSlider($filter)
    {
        $filter["status"] = 1;
        $data = $this->tSlider->getListSlider($filter);
        return $data;
    }

    public function getDataBanner($filter)
    {
        $filter["type_banner"] = ["banner"];
        $data = $this->tBanner->getListBanner($filter);
        return $data;
    }

    public function getDataBannerRight($filter)
    {
        $filter["type_banner"] = ["banner_right"];
        $data = $this->tBanner->getListBanner($filter)->toarray();
        return $data;
    }
    public function getDataProduct($filter)
    {
        $filter["status"] = 1;
        $data = $this->tProduct->getListProduct($filter);
        foreach($data as $key => $item) {
            $data[$key]["image_product"] = $this->getImageProduct($item['id'])->first();
        }
        return $data;
    }

    public function getDataRoom($filter)
    {
        $filter["status"] = 1;
        $data = $this->tRoom->getListRoom($filter)->take(3);

        foreach($data as $key => $item) {
                $data[$key]["data_product"] = $this->getProductOfRoom($item['id']);
        }


        return $data;
    }
    public function getProductWithCategoryId($id){
        $filter["in_id_category"] = $id;
        $filter["status"] = 1;
        return $this->tMappingCategoryProduct->getListMappingCategoryProduct($filter);
    }
    public function getProductOfRoom($id){

        $filter["id_room"] = $id;
        $filter["status"] = 1;
        $data = [];
        $filterCategory["in_id_category"] = [];
        $dataMappingRoomCategory = $this->tMappingRoomCategory->getListMappingRoomCategory($filter);
        foreach($dataMappingRoomCategory as $key => $item) {
            $filterCategory["in_id_category"][] = $item["id_category"];
            // $data[$key]["product"] = getProductWithCategoryId($);
        }

        if( !empty($filterCategory["in_id_category"])) {
            $data = $this->getProductWithCategoryId($filterCategory["in_id_category"])->toarray();
            foreach($data as $key => $item) {
                $data[$key]["image_product"] = $this->getImageProduct($item['id_product'])->first();
            }
        }
        return $data;
        //
        // return $this->tMappingProductImage->getListMappingProductImage($filter)->first();
    }

}
