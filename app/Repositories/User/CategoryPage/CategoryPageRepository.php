<?php

namespace App\Repositories\User\CategoryPage;

use App\Repositories\User\CategoryPage\CategoryPageRepositoryInterface;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\MappingCategoryProduct;
use App\Models\MappingProductImage;
use App\Models\Posts;

use Carbon\Carbon;
use App\Models\Categorys;

class CategoryPageRepository implements CategoryPageRepositoryInterface
{
    protected $tCategory;
    protected $tMappingCategoryProduct;
    protected $tMappingProductImage;


    public function __construct(
        Categorys $tCategory,
        MappingCategoryProduct $tMappingCategoryProduct,
        MappingProductImage $tMappingProductImage
    )
    {
        $this->tCategory = $tCategory;
        $this->tMappingCategoryProduct = $tMappingCategoryProduct;
        $this->tMappingProductImage = $tMappingProductImage;

    }

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

    public function getDataProduct($id)
    {

        $data = $this->getProductWithCategoryId($id);
        foreach($data as $key => $item) {
            $data[$key]["image_product"] = $this->getImageProduct($item['id_product'])->first()["url_image"];
        }
        return $data;
    }

    public function getProductWithCategoryId($id){

        $filter["id_category"] = $id;
        $filter["status"] = 1;
        $filter["paginate"] = true;
        return $this->tMappingCategoryProduct->getListMappingCategoryProduct($filter);
    }

    public function getDataCategory($slug) {
        $filter["url_category"] = $slug;
        $filter["status"] = 1;
        return $this->tCategory->getListCategory($filter)->first();
    }
}
