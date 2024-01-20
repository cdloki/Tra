<?php

namespace App\Repositories\User\Menu;

use App\Repositories\User\Menu\MenuRepositoryInterface;
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

class MenuRepository implements MenuRepositoryInterface
{
    protected $tCategory;
    protected $tRoom;
    // protected $tMappingRoomCategory;
    protected $tMappingCategoryProduct;
    protected $tMappingRoomCategory;
    protected $tMappingProductImage;
    protected $tDiscountPost;

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


    public function getDataCategory($filter)
    {
        $filter["status"] = 1;
        $data = $this->tCategory->getListCategory($filter);
        return $data;
    }
    public function getDataPost($filter)
    {
        $filter["type"] = 3;
        $filter["status"] = 1;
        $data = $this->tDiscountPost->getListPost($filter);
        return $data;
    }

    public function getMenuRoom($filter)
    {
        $filter["status"] = 1;
        $data = $this->tRoom->getListRoom($filter);

        // foreach($data as $key => $item) {
        //         $data[$key]["data_category"] = $this->getCategoryOfRoom($item['id']);
        // }
        return $data;
    }
    public function getCategoryOfRoom($id){

        $filter["id_room"] = $id;
        $filter["status"] = 1;
        $data = $this->tMappingRoomCategory->getListMappingRoomCategory($filter);
        return $data;
        //
        // return $this->tMappingProductImage->getListMappingProductImage($filter)->first();
    }

}
