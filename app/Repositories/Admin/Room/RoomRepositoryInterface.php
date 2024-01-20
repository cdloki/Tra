<?php
namespace App\Repositories\Admin\Room;

interface RoomRepositoryInterface
{

    /**
     * @param array $data
     * @return mixed
     */

    public function getListRoom($filter);

    /**
     * @param array $data
     * @return mixed
     */

    public function storeRoom($data);

    /**
     * @param array $data
     * @return mixed
     */

    public function updateRoom($data);

     /**
     * @param string $data
     * @return mixed
     */

    public function getDetailRoom($id);

      /**
     * @param string $id
     * @return mixed
     */

    public function changeStatus($id);


      /**
     * @param string $id
     * @return mixed
     */

    public function removeRoom($id);
}
