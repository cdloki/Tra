<?php
namespace App\Repositories\Admin\DiscountPost;

interface DiscountPostRepositoryInterface
{

    /**
     * @param array $data
     * @return mixed
     */

    public function getListDiscountPost($filter);

    /**
     * @param array $data
     * @return mixed
     */

    public function storeDiscountPost($data);

    /**
     * @param array $data
     * @return mixed
     */

    public function updateDiscountPost($data);

     /**
     * @param string $data
     * @return mixed
     */

    public function getDetailDiscountPost($id);

      /**
     * @param string $id
     * @return mixed
     */

    public function changeStatus($id);


      /**
     * @param string $id
     * @return mixed
     */

    public function removeDiscountPost($id);
}
