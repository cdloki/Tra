<?php

namespace App\Repositories\Admin\Mapping;

use App\Models\MappingRoomCategory;
use App\Models\MappingCategoryProduct;
use App\Models\MappingProductImage;

// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

use Carbon\Carbon;
class MappingRepository implements MappingRepositoryInterface
{
    protected $tMappingRoomCategory;
    protected $tMappingCategoryProduct;
    protected $tMappingProductImage;

    public function __construct(
        MappingRoomCategory $tMappingRoomCategory,
        MappingCategoryProduct $tMappingCategoryProduct,
        MappingProductImage $tMappingProductImage

    )
    {
        $this->tMappingRoomCategory = $tMappingRoomCategory;
        $this->tMappingCategoryProduct = $tMappingCategoryProduct;
        $this->tMappingProductImage = $tMappingProductImage;

    }

    public function getListMappingRoomCategory($filter)
    {
        return $this->tMappingRoomCategory->getListMappingRoomCategory($filter);
    }

    public function getListMappingCategoryProduct($filter)
    {
        return $this->tMappingCategoryProduct->getListMappingCategoryProduct($filter);
    }

    public function getListMappingProductImage($filter)
    {
        return $this->tMappingProductImage->getListMappingProductImage($filter);
    }


}
