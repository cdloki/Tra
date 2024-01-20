<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;

use App\Repositories\Admin\Mapping\MappingRepositoryInterface;
use Illuminate\Http\Request;

class MappingController  extends Controller
{
    protected $rMapping;
    public function __construct(

        MappingRepositoryInterface $rMapping
    )
    {
        $this->rMapping = $rMapping;
    }

    public function mappingRoomCategory(Request $request)
    {
        $data = $request->all();
        return $this->rMapping->getListMappingRoomCategory($data);
    }

    public function mappingCategoryProduct(Request $request)
    {
        $data = $request->all();
        return $this->rMapping->getListMappingCategoryProduct($data);
    }

    public function mappingProductImage(Request $request)
    {
        $data = $request->all();
        return $this->rMapping->getListMappingProductImage($data);
    }
}
