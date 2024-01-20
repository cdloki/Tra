<?php
namespace App\Repositories\Admin\Contacst;

interface ContacstRepositoryInterface
{

    // /**
    //  * @param array $data
    //  * @return mixed
    //  */

    // public function getListCategory($filter);

    // /**
    //  * @param array $data
    //  * @return mixed
    //  */

    // public function storeCategory($data);

    // /**
    //  * @param array $data
    //  * @return mixed
    //  */

    // public function updateCategory($data);

    //  /**
    //  * @param string $data
    //  * @return mixed
    //  */

    // public function getDetailCategory($id);

    //   /**
    //  * @param string $id
    //  * @return mixed
    //  */

    // public function changeStatus($id);


    /**
     * @param string $id
     * @return mixed
    */

    public function getDetailContacst($id);

    /**
     * @param array $data
     * @return mixed
    */

    public function updateContacst($data);
}
