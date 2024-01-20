<?php
namespace App\Repositories\User\AboutPage;

interface AboutPageRepositoryInterface
{

    /**
     * @param array $filter
     * @return mixed
     */

    public function getDataAbout($filter);

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
