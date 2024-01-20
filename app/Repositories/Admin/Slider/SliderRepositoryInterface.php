<?php
namespace App\Repositories\Admin\Slider;

interface SliderRepositoryInterface
{

    // /**
    //  * @param array $data
    //  * @return mixed
    //  */

    // public function getListSlider($filter);

    // /**
    //  * @param array $data
    //  * @return mixed
    //  */

    public function storeSlider($data);

    /**
     * @param array $data
     * @return mixed
     */

    public function updateSlider($data);

     /**
     * @param string $data
     * @return mixed
     */

    public function getDetailSlider($id);

      /**
     * @param string $id
     * @return mixed
     */

    public function changeStatus($id);


      /**
     * @param string $id
     * @return mixed
     */

    public function removeSlider($id);
}
