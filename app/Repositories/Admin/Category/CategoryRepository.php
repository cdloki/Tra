<?php

namespace App\Repositories\Admin\Category;

use App\Repositories\Admin\Category\CategoryRepositoryInterface;
use App\Models\Categorys;
// use App\Models\MappingRoomCategory;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\MappingCategoryProduct;

use Carbon\Carbon;
class CategoryRepository implements CategoryRepositoryInterface
{
    protected $tCategory;
    // protected $tMappingRoomCategory;
    protected $tMappingCategoryProduct;


    public function __construct(
        Categorys $tCategory,
        // MappingRoomCategory $tMappingRoomCategory,
        MappingCategoryProduct $tMappingCategoryProduct

    )
    {
        $this->tCategory = $tCategory;
        // $this->tMappingRoomCategory = $tMappingRoomCategory;
        $this->tMappingCategoryProduct = $tMappingCategoryProduct;

    }

    public function getListCategory($filter)
    {
        return $this->tCategory->getListCategory($filter);
    }

    public function storeCategory($data)
    {
        DB::beginTransaction();
        try {
            $dataStoreCategory = [
                'code_category' => $data['code_category'],
                'name_category' => $data['name_category'],
                'url_category' => $data['url_category'],
                'image_category' => $data['image_category'],
                'description_category' => $data['description_category'],
                'title_seo_category' => $data['title_seo'],
                'description_seo_category' => strip_tags($data['description_seo']),
                'keyword_seo_category' => $data['dataTagSeo'],
            ];
            if ($dataStoreCategory['url_category'] == NULL) {
                $dataStoreCategory["url_category"] = ChangeToSlug($data['name_category']);
            }
            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;

            $id = $this->tCategory->store($dataStoreCategory);
            // if ($data["dataRoom"] != null) {
            //     $idRoom = explode(',',$data["dataRoom"]);
            //     foreach ($idRoom as $item) {
            //         $dataMapping[] = [
            //             "id_room" => $item,
            //             "id_category" => $id
            //         ];
            //     }
            //     $this->tMappingRoomCategory->store($dataMapping);
            // }

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

    public function getDetailCategory($id)
    {
        $data = $this->tCategory->getOneCategory($id);
        // $data["url_category"] = substr($data["url_category"], 1);
        return $data;
    }

    public function changeStatus($id)
    {
        DB::beginTransaction();
        try {
            $dataCategory = $this->tCategory->getOneCategory($id);
            $dataUpdate["id"] = $id;
            $dataCategory["status"] == 0 ? $dataUpdate["status"] = 1: $dataUpdate["status"] = 0;
            $id = $this->tCategory->edit($dataUpdate);
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
    public function removeCategory($id)
    {
        DB::beginTransaction();
        try {
            $this->tCategory->remove($id);
            // $this->tMappingRoomCategory->removeWithIdCategory($id);
            $this->tMappingCategoryProduct->removeWithIdCategory($id);

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



    public function updateCategory($data)
    {
        DB::beginTransaction();
        try {
            $dataStoreCategory = [
                'id' => $data['id'],
                'code_category' => $data['code_category'],
                'name_category' => $data['name_category'],
                'url_category' => $data['url_category'],
                'image_category' => $data['image_category'],
                'description_category' => $data['description_category'],
                'title_seo_category' => $data['title_seo'],
                'description_seo_category' => strip_tags($data['description_seo']),
                'keyword_seo_category' => $data['dataTagSeo'],
            ];
            if ($dataStoreCategory['url_category'] == NULL) {
                $dataStoreCategory["url_category"] = ChangeToSlug($data['name_category']);
            }
            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;
            $this->tCategory->edit($dataStoreCategory);

            // $this->tMappingRoomCategory->removeWithIdCategory($data['id']);
            // if (!empty($data["dataRoom"])) {
            //     // dd("AAA");
            //     $idRoom = explode(',',$data["dataRoom"]);
            //     foreach ($idRoom as $item) {
            //         $dataMapping[] = [
            //             "id_room" => $item,
            //             "id_category" => $data['id']
            //         ];
            //     }
            //     $this->tMappingRoomCategory->store($dataMapping);
            // }


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
