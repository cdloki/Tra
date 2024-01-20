<?php
namespace App\Repositories\User\HomePage;

interface HomePageRepositoryInterface
{

    /**
     * @param array $filter
     * @return mixed
     */

    public function getDataCategory($filter);

    /**
     * @param array $filter
     * @return mixed
     */

    public function getDataProduct($filter);

    /**
     * @param Int $id
     * @return mixed
     */

    public function getDataSlider($filter);

    /**
     * @param Int $id
     * @return mixed
     */

    public function countProduct($id);

    /**
     * @param Int $id
     * @return mixed
     */

    public function getImageProduct($id);

    /**
     * @param array $filter
     * @return mixed
     */

    public function getDataPost($filter);

    /**
     * @param Int $id
     * @return mixed
     */

    public function getProductOfRoom($id);

     /**
     * @param Int $id
     * @return mixed
     */

    public function getProductWithCategoryId($id);

}
