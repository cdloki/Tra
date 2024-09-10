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

    public function getAvatarImageProduct($id){
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



    public function getDataProduct($slug)
    {
        $filter["status"] = 1;
        $filter["url_product"] = $slug;
        $data = $this->tProduct->getListProduct($filter)->first();
        $data["category_product"] = $this->getCategoryWithProductId($data["id"]);
        $data["image_product"] = $this->getImageProduct($data['id']);
        return $data;
    }



    public function getDataRandomProduct()
    {
        $filter["status"] = 1;
        $data = $this->tProduct->getListProduct($filter)->take(10);
        // dd($data);
        foreach($data as $key => $item) {
            $data[$key]["image_product"] = $this->getAvatarImageProduct($item['id'])->first();
        }
        return $data;
    }

    public function getCategoryWithProductId($id){
        $filter["id_product"] = $id;
        $filter["status"] = 1;
        return $this->tMappingCategoryProduct->getListMappingCategoryProduct($filter);
    }

}
