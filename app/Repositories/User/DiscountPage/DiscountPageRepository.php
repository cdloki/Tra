<?php

namespace App\Repositories\User\DiscountPage;

use App\Repositories\User\DiscountPage\DiscountPageRepositoryInterface;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
// use App\Models\MappingDiscountProduct;
// use App\Models\MappingProductImage;
use App\Models\Posts;

use Carbon\Carbon;
use App\Models\Discounts;

class DiscountPageRepository implements DiscountPageRepositoryInterface
{
    protected $tDiscount;
    // protected $tMappingDiscountProduct;
    // protected $tMappingProductImage;


    public function __construct(
        Posts $tDiscount
        // MappingDiscountProduct $tMappingDiscountProduct,
        // MappingProductImage $tMappingProductImage
    )
    {
        $this->tDiscount = $tDiscount;
        // $this->tMappingDiscountProduct = $tMappingDiscountProduct;
        // $this->tMappingProductImage = $tMappingProductImage;

    }

    // public function getImageProduct($id){
    //     $filter["id_product"] = $id;
    //     $data = $this->tMappingProductImage->getListMappingProductImage($filter);
    //     if ($data == null) {
    //         $data[0] = [
    //         "id" => null,
    //         "id_product" => null,
    //         "main_image" => null,
    //         "url_image" => null,
    //       ];
    //     }
    //     return $data;
    // }

    public function getDataDiscount($filter)
    {
        $filter["status"] = 1;
        $filter["type"] = 3;
        $filter["paginate"] = true;
        $data = $this->tDiscount->getListPost($filter);
       foreach ($data as $key => $item){
        $data[$key]['content_post'] = strip_tags($item['content_post']);
       }
        return $data;
    }

    public function getDataDiscountNew()
    {
        $filter["status"] = 1;
        $filter["type"] = 3;
        // $filter["paginate"] = true;
        $data = $this->tDiscount->getListPost($filter)->take(3);
        return $data;
    }
    // public function getProductWithDiscountId($id){
    //     $filter["id_Discount"] = $id;
    //     // $filter["status"] = 1;
    //     $filter["paginate"] = true;
    //     return $this->tMappingDiscountProduct->getListMappingDiscountProduct($filter);
    // }

    public function getDataDetailDiscount($slug) {
        $filter["url_post"] = $slug;
        $filter["status"] = 1;
        return $this->tDiscount->getListPost($filter)->first();
    }
}
