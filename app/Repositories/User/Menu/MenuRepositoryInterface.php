<?php
namespace App\Repositories\User\Menu;

interface MenuRepositoryInterface
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

    public function getMenuRoom($filter);

    /**
     * @param String $id
     * @return mixed
     */

    public function getCategoryOfRoom($id);

     /**
     * @param array $filter
     * @return mixed
     */

    public function getDataPost($filter);

}
