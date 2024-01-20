<?php

namespace App\Repositories\User\RoomPage;

use App\Repositories\User\RoomPage\RoomPageRepositoryInterface;

// use App\Models\Categorys;
use App\Models\Rooms;
// use App\Models\Sliders;
// use App\Models\Banners;

// use App\Models\MappingRoomCategory;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\MappingCategoryProduct;
use App\Models\MappingRoomCategory;
use App\Models\MappingProductImage;
// use App\Models\Posts;

use Carbon\Carbon;
// use App\Models\Products;

class RoomPageRepository implements RoomPageRepositoryInterface
{
    // protected $tCategory;
    protected $tRoom;
    // protected $tMappingRoomCategory;
    protected $tMappingCategoryProduct;
    protected $tMappingRoomCategory;
    protected $tMappingProductImage;
    // protected $tDiscountPost;
    // protected $tSlider;
    // protected $tBanner;


    public function __construct(
        // Categorys $tCategory,
        // Products $tProduct,
        Rooms $tRoom,
        // Sliders $tSlider,
        MappingCategoryProduct $tMappingCategoryProduct,
        MappingProductImage $tMappingProductImage,
        MappingRoomCategory $tMappingRoomCategory
        // Posts $tDiscountPost,
        // Banners $tBanner


    )
    {
        // $this->tProduct = $tProduct;
        $this->tRoom = $tRoom;
        // $this->tDiscountPost = $tDiscountPost;
        // $this->tCategory = $tCategory;
        $this->tMappingRoomCategory = $tMappingRoomCategory;
        $this->tMappingCategoryProduct = $tMappingCategoryProduct;
        $this->tMappingProductImage = $tMappingProductImage;
        // $this->tSlider = $tSlider;
        // $this->tBanner = $tBanner;

    }

    // public function getImageProduct($id){
    //     $filter["id_product"] = $id;
    //     $data = $this->tMappingProductImage->getListMappingProductImage($filter);
    //     if ($data->isEmpty()) {
    //         $data[0] = [
    //         "id" => null,
    //         "id_product" => null,
    //         "main_image" => null,
    //         "url_image" => null,
    //       ];
    //     }
    //     return $data;
    // }

    // public function getDataProduct($id)
    // {

    //     $data = $this->getProductWithRoomId($id);
    //     foreach($data as $key => $item) {
    //         $data[$key]["image_product"] = $this->getImageProduct($item['id_product'])->first()["url_image"];
    //     }
    //     return $data;
    // }

    // public function getProductWithRoomId($id){
    //     $filter["id_Room"] = $id;
    //     // $filter["status"] = 1;
    //     $filter["paginate"] = true;
    //     return $this->MappingCategoryProduct->getListMappingCategoryProduct($filter);
    // }

    public function getDataRoom($slug) {
        $filter["url_room"] = $slug;
        $filter["status"] = 1;
        return $this->tRoom->getListRoom($filter)->first();
    }

    public function getDataCategory($filter)
    {
        $filterCategory["id_room"] = $filter;
        $filterCategory["status"] = 1;
        return $this->tMappingRoomCategory->getListMappingRoomCategory($filterCategory);
    }

    public function getProductWithCategoryId($filter){

        if ( empty($filter)) {
            $filter = ["Null"];
        }
        $filterCategory["in_id_category"] = $filter;
        $filterCategory["status"] = 1;
        $filterCategory["paginate"] = true;

        $data = $this->tMappingCategoryProduct->getListMappingCategoryProduct($filterCategory);

        foreach($data as $key => $item) {
            $data[$key]["image_product"] = $this->getImageProduct($item['id_product'])->first()["url_image"];
        }
        return $data;
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
}
