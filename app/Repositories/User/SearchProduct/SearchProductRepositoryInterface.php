<?php
namespace App\Repositories\User\SearchProduct;

interface SearchProductRepositoryInterface
{
 /**
     * @param array $data
     * @return mixed
     */

    public function getListProduct($filter);


     /**
     * @param string $data
     * @return mixed
     */

    public function getDetailProduct($id);






}
