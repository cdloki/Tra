<?php

namespace App\Repositories\Admin\Slider;

use App\Repositories\Admin\Slider\SliderRepositoryInterface;
use App\Models\Sliders;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class SliderRepository implements SliderRepositoryInterface
{
    protected $tSlider;

    public function __construct(
        Sliders $tSlider
    )
    {
        $this->tSlider = $tSlider;
    }

    public function getListSlider($filter)
    {
        return $this->tSlider->getListSlider($filter);
    }

    public function storeSlider($data)
    {
        DB::beginTransaction();
        try {
            $dataStoreSlider = [
                "keyword_slider" => $data["keyword_slider"],
                "tbutton_slider" => $data["tbutton_slider"],
                "location_slider" => $data["location_slider"],
                "image_slider" => $data["image_slider"],
                "description_slider" => $data["description_slider"],
                "url_slider" => $data["url_slider"],
            ];

            $id = $this->tSlider->store($dataStoreSlider);

            DB::commit();
            return [
                'error' => false,
                'message' => __('Tạo thành công!'),
            ];
        } catch (\Exception $exception) {
            DB::rollBack();
            return [
                'error' => true,
                'message' => __('Tạo thất bại!')
            ];
        }
    }

    public function getDetailSlider($id)
    {
        $data = $this->tSlider->getOneSlider($id);
        // $data["url_Slider"] = substr($data["url_Slider"], 1);
        return $data;
    }

    public function changeStatus($id)
    {
        DB::beginTransaction();
        try {
            $dataSlider = $this->tSlider->getOneSlider($id);
            $dataUpdate["id"] = $id;
            $dataSlider["status"] == 0 ? $dataUpdate["status"] = 1: $dataUpdate["status"] = 0;
            $id = $this->tSlider->edit($dataUpdate);
            DB::commit();
            return [
                'error' => false,
                'message' => __('Cập nhật trạng thái thành công!'),
                'status' =>  $dataUpdate["status"],
            ];
        } catch (\Exception $exception) {
            DB::rollBack();
            return [
                'error' => true,
                'message' => __('Cập nhật trạng thái thất bại!')
            ];
        }
    }
    public function removeSlider($id)
    {
        DB::beginTransaction();
        try {
            $this->tSlider->remove($id);
            // $this->tMappingSliderCategory->removeWithIdSlider($id);

            DB::commit();
            return [
                'error' => false,
                'message' => __('Xóa thành công!'),
                'id' =>  $id,
            ];
        } catch (\Exception $exception) {
            DB::rollBack();
            return [
                'error' => true,
                'message' => __('Xóa thất bại!')
            ];
        }
    }



    public function updateSlider($data)
    {
        DB::beginTransaction();
        try {
            $dataStoreSlider = [
                'id' => $data['id'],
                "keyword_slider" => $data["keyword_slider"],
                "tbutton_slider" => $data["tbutton_slider"],
                "location_slider" => $data["location_slider"],
                "image_slider" => $data["image_slider"],
                "description_slider" => $data["description_slider"],
                "url_slider" => $data["url_slider"],
            ];

            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;
            $id = $this->tSlider->edit($dataStoreSlider);
            DB::commit();
            return [
                'error' => false,
                'message' => __('Cập nhật thành công!'),
            ];
        } catch (\Exception $exception) {
            DB::rollBack();
            return [
                'error' => true,
                'message' => __('Cập nhật thất bại!')
            ];
        }
    }




}
