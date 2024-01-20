<?php
namespace App\Repositories\User\CategoryPage;

interface CategoryPageRepositoryInterface
{

    // /**
    //  * @param array $filter
    //  * @return mixed
    //  */

    // public function getDataCategory($filter);

    // /**
    //  * @param array $filter
    //  * @return mixed
    //  */

    // public function getDataProduct($slug);

    // /**
    //  * @return mixed
    //  */

    // public function getDataRandomProduct();

    /**
     * @param Int $id
     * @return mixed
     */

    public function getImageProduct($id);

    // /**
    //  * @param array $filter
    //  * @return mixed
    //  */

    // public function getDataPost($filter);

    /**
     * @param String $slug
     * @return mixed
     */

    public function getDataCategory($slug);

     /**
     * @param Int $id
     * @return mixed
     */

    public function getProductWithCategoryId($id);

}
