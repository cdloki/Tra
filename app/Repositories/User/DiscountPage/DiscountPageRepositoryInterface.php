<?php
namespace App\Repositories\User\DiscountPage;

interface DiscountPageRepositoryInterface
{

    /**
     * @return mixed
     */

    public function getDataDiscount($filter);

    /**
     * @param String $slug
     * @return mixed
     */

    public function getDataDetailDiscount($slug);

    // /**
    //  * @return mixed
    //  */

    // public function getDataRandomProduct();

    // /**
    //  * @param Int $id
    //  * @return mixed
    //  */

    // public function getImageProduct($id);

    // /**
    //  * @param array $filter
    //  * @return mixed
    //  */

    // public function getDataPost($filter);

    // /**
    //  * @param String $slug
    //  * @return mixed
    //  */

    // public function getDataDiscount($slug);

    //  /**
    //  * @param Int $id
    //  * @return mixed
    //  */

    // public function getProductWithDiscountId($id);

}
