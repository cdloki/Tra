<?php

namespace App\Repositories\User\SearchProduct;

use App\Repositories\User\SearchProduct\SearchProductRepositoryInterface;
use App\Models\Products;
use App\Models\MappingCategoryProduct;
use App\Models\MappingProductImage;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class SearchProductRepository implements SearchProductRepositoryInterface
{
    protected $tProduct;

    public function __construct(
        Products $tProduct,
        MappingCategoryProduct $tMappingCategoryProduct,
        MappingProductImage $tMappingProductImage
    )
    {
        $this->tProduct = $tProduct;
        $this->tMappingCategoryProduct = $tMappingCategoryProduct;
        $this->tMappingProductImage = $tMappingProductImage;
    }
    public function getListProduct($filter)
    {
        $filter["status"] = 1;
        $dataProduct = $this->tProduct->getListProduct($filter)->toarray();
        // $key = $loop->index;
        foreach ( $dataProduct as $key => $item) {
            $filter["id_product"] = $item["id"];
            $filter["main_image"] = 1;
            $dataMapping = $this->tMappingProductImage->getListMappingProductImage($filter)->first();
            if(!empty($dataMapping)){
                $dataProduct[$key]["dataImage"] = $dataMapping->url_image;
            }
        }
        return $dataProduct;
    }

    public function getDetailProduct($id)
    {
        $data = $this->tProduct->getOneProduct($id);
        // $data["url_product"] = substr($data["url_product"], 1);
        return $data;
    }



}
