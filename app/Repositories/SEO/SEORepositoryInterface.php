<?php
namespace App\Repositories\SEO;

interface SEORepositoryInterface
{

    /**
     * @param array $filter
     * @return mixed
     */

    public function getDataSEO( $page, $type, $id);

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
