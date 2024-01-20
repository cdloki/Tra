<?php
namespace App\Repositories\Admin\Mapping;

interface MappingRepositoryInterface
{

    /**
     * @param array $data
     * @return mixed
     */

    public function getListMappingRoomCategory($filter);

    /**
     * @param array $data
     * @return mixed
     */

    public function getListMappingCategoryProduct($filter);

    /**
     * @param array $data
     * @return mixed
     */

    public function getListMappingProductImage($filter);

}
