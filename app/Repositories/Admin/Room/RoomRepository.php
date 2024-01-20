<?php

namespace App\Repositories\Admin\Room;

use App\Repositories\Admin\Room\RoomRepositoryInterface;
use App\Models\Rooms;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\MappingRoomCategory;

use Carbon\Carbon;
class RoomRepository implements RoomRepositoryInterface
{
    protected $tRoom;
    protected $tMappingRoomCategory;

    public function __construct(
        Rooms $tRoom,
        MappingRoomCategory $tMappingRoomCategory
    )
    {
        $this->tRoom = $tRoom;
        $this->tMappingRoomCategory = $tMappingRoomCategory;

    }

    public function getListRoom($filter)
    {
        return $this->tRoom->getListRoom($filter);
    }



    public function storeRoom($data)
    {
        DB::beginTransaction();
        try {
            $dataStoreRoom = [
                'code_room' => $data['code_room'],
                'name_room' => $data['name_room'],
                'url_room' => $data['url_room'],
                'image_room' => $data['image_room'],
                'description_room' => $data['description_room'],
                'title_seo_room' => $data['title_seo'],
                'description_seo_room' => strip_tags($data['description_seo']),
                'keyword_seo_room' => $data['dataTagSeo'],
            ];
            if ($dataStoreRoom['url_room'] == NULL) {
                $dataStoreRoom["url_room"] = ChangeToSlug($data['name_room']);
            }
            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;

            $id = $this->tRoom->store($dataStoreRoom);

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

    public function getDetailRoom($id)
    {
        $data = $this->tRoom->getOneRoom($id);
        // $data["url_room"] = substr($data["url_room"], 1);
        return $data;
    }

    public function changeStatus($id)
    {
        DB::beginTransaction();
        try {
            $dataRoom = $this->tRoom->getOneRoom($id);
            $dataUpdate["id"] = $id;
            $dataRoom["status"] == 0 ? $dataUpdate["status"] = 1: $dataUpdate["status"] = 0;
            $id = $this->tRoom->edit($dataUpdate);
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
    public function removeRoom($id)
    {
        DB::beginTransaction();
        try {
            $this->tRoom->remove($id);
            $this->tMappingRoomCategory->removeWithIdRoom($id);

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



    public function updateRoom($data)
    {
        DB::beginTransaction();
        try {
            $dataStoreRoom = [
                'id' => $data['id'],
                'code_room' => $data['code_room'],
                'name_room' => $data['name_room'],
                'url_room' => $data['url_room'],
                'image_room' => $data['image_room'],
                'description_room' => $data['description_room'],
                'title_seo_room' => $data['title_seo'],
                'description_seo_room' => strip_tags($data['description_seo']),
                'keyword_seo_room' => $data['dataTagSeo'],
            ];
            if ($dataStoreRoom['url_room'] == NULL) {
                $dataStoreRoom["url_room"] = ChangeToSlug($data['name_room']);
            }
            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;
            $id = $this->tRoom->edit($dataStoreRoom);
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
