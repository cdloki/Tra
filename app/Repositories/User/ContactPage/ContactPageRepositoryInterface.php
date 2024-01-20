<?php
namespace App\Repositories\User\ContactPage;

interface ContactPageRepositoryInterface
{

    /**
     * @param array $filter
     * @return mixed
     */

    public function getDataContact($filter);

    // /**
    //  * @param array $filter
    //  * @return mixed
    //  */

    // public function getDataProduct($filter);

    // /**
    //  * @param Int $id
    //  * @return mixed
    //  */

    // public function countProduct($id);

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

}
