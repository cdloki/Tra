<?php
namespace App\Repositories\User\DetailProductPage;

interface DetailProductPageRepositoryInterface
{

    // /**
    //  * @param array $filter
    //  * @return mixed
    //  */

    // public function getDataCategory($filter);

    /**
     * @param array $filter
     * @return mixed
     */

    public function getDataProduct($slug);

    /**
     * @return mixed
     */

    public function getDataRandomProduct();

    /**
     * @param Int $id
     * @return Array
     */

    public function getImageProduct($id);

    // /**
    //  * @param array $filter
    //  * @return mixed
    //  */

    // public function getDataPost($filter);

    // /**
    //  * @param Int $id
    //  * @return mixed
    //  */

    // public function getProductOfRoom($id);

     /**
     * @param Int $id
     * @return mixed
     */

    public function getCategoryWithProductId($id);

}
