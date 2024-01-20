<?php
namespace App\Repositories\Admin\Product;

interface ProductRepositoryInterface
{

    /**
     * @param array $data
     * @return mixed
     */

    public function getListProduct($filter);

    /**
     * @param array $data
     * @return mixed
     */

    public function storeProduct($data);

    /**
     * @param array $data
     * @return mixed
     */

    public function updateProduct($data);

     /**
     * @param string $data
     * @return mixed
     */

    public function getDetailProduct($id);

      /**
     * @param string $id
     * @return mixed
     */

    public function changeStatus($id);


    /**
     * @param string $id
     * @return mixed
    */

    public function removeProduct($id);


}
