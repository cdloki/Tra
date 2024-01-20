<?php
namespace App\Repositories\User\RoomPage;

interface RoomPageRepositoryInterface
{

    // /**
    //  * @param array $filter
    //  * @return mixed
    //  */

    // public function getDataRoom($filter);

    // /**
    //  * @param array $filter
    //  * @return mixed
    //  */

    // public function getDataProduct($slug);

    // /**
    //  * @return mixed
    //  */

    // public function getDataRandomProduct();

    // /**
    //  * @param Int $id
    //  * @return mixed
    //  */

    // public function getImageProduct($id);

    // // /**
    // //  * @param array $filter
    // //  * @return mixed
    // //  */

    // public function getDataPost($filter);

    /**
     * @param String $slug
     * @return mixed
     */

    public function getDataRoom($slug);

    //  /**
    //  * @param Int $id
    //  * @return mixed
    //  */

    // public function getProductWithRoomId($id);

}
