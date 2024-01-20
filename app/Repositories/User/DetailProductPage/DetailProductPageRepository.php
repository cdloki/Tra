<?php

namespace App\Repositories\User\DetailProductPage;

use App\Repositories\User\DetailProductPage\DetailProductPageRepositoryInterface;
use App\Models\Categorys;
use App\Models\Rooms;

// use App\Models\MappingRoomCategory;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\MappingCategoryProduct;
use App\Models\MappingRoomCategory;
use App\Models\MappingProductImage;
use App\Models\Posts;

use Carbon\Carbon;
use App\Models\Products;

class DetailProductPageRepository implements DetailProductPageRepositoryInterface
{
    protected $tCategory;
    protected $tRoom;
    // protected $tMappingRoomCategory;
    protected $tMappingCategoryProduct;
    protected $tMappingRoomCategory;
    protected $tMappingProductImage;
    protected $tDiscountPost;
    protected $tProduct;


    public function __construct(
        Categorys $tCategory,
        Products $tProduct,
        Rooms $tRoom,
    //     MappingRoomCategory $tMappingRoomCategory,
        MappingCategoryProduct $tMappingCategoryProduct,
        MappingProductImage $tMappingProductImage,
        MappingRoomCategory $tMappingRoomCategory,
        Posts $tDiscountPost


    )
    {
        $this->tProduct = $tProduct;
        $this->tRoom = $tRoom;
        $this->tDiscountPost = $tDiscountPost;
        $this->tCategory = $tCategory;
        $this->tMappingRoomCategory = $tMappingRoomCategory;
        $this->tMappingCategoryProduct = $tMappingCategoryProduct;
        $this->tMappingProductImage = $tMappingProductImage;

    }

    // public function countProduct($id){
    //     $filter["id_category"] = $id;
    //     $filter["status"] = 1;
    //     return $this->tMappingCategoryProduct->getListMappingCategoryProduct($filter)->count();
    // }

    public function getImageProduct($id){
        $filter["id_product"] = $id;
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



    // public function getDataCategory($filter)
    // {
    //     $filter["status"] = 1;
    //     $filter["status"] = 1;
    //     $data = $this->tCategory->getListCategory($filter);
    //     foreach($data as $key => $item) {
    //         $data[$key]["total_product"] = $this->countProduct($item['id']);
    //     }
    //     return $data;
    // }

    // public function getDataPost($filter)
    // {
    //     $filter["type"] = 3;
    //     $filter["status"] = 1;
    //     $data = $this->tDiscountPost->getListPost($filter);
    //     return $data;
    // }

    public function getDataProduct($slug)
    {
        $filter["status"] = 1;
        $filter["url_product"] = $slug;
        $data = $this->tProduct->getListProduct($filter)->first();
        $data["category_product"] = $this->getCategoryWithProductId($data["id"]);
        $data["image_product"] = $this->getImageProduct($data['id']);
        return $data;
    }


    // public function getDataRandomProduct()
    // {
    //     $filter["status"] = 1;
    //     $data = $this->tProduct->getListProduct($filter);
    //     // $filter["url_product"] = $slug;
    //     // $data = $this->tProduct->getListProduct($filter)->first();
    //     // $data["category_product"] = $this->getCategoryWithProductId($data["id"]);
    //     // $data["image_product"] = $this->getImageProduct($data['id']);
    //     // return $data;
    // }
    public function getDataRandomProduct()
    {
        $filter["status"] = 1;
        $data = $this->tProduct->getListProduct($filter)->take(10);
        foreach($data as $key => $item) {
            $data[$key]["image_product"] = $this->getImageProduct($item['id'])->first();
        }
        return $data;
    }
    // public function getDataRoom($filter)
    // {
    //     $filter["status"] = 1;
    //     $data = $this->tRoom->getListRoom($filter)->take(3);
    //     foreach($data as $key => $item) {
    //         $data[$key]["data_product"] = $this->getProductOfRoom($item['id']);
    //     }
    //     return $data;
    // }
    public function getCategoryWithProductId($id){
        $filter["id_product"] = $id;
        $filter["status"] = 1;
        return $this->tMappingCategoryProduct->getListMappingCategoryProduct($filter);
    }
    // public function getProductOfRoom($id){

    //     $filter["id_room"] = $id;
    //     $filter["status"] = 1;
    //     $data;
    //     $dataMappingRoomCategory = $this->tMappingRoomCategory->getListMappingRoomCategory($filter);
    //     foreach($dataMappingRoomCategory as $key => $item) {
    //         // $data[$key]["product"] = getProductWithCategoryId($);
    //         $data = $this->getProductWithCategoryId($item["id_category"])->toarray();
    //     }

    //     foreach($data as $key => $item) {
    //         $data[$key]["image_product"] = $this->getImageProduct($item['id_product']);
    //     }
    //     return $data;
    //     //
    //     // return $this->tMappingProductImage->getListMappingProductImage($filter)->first();
    // }

}
