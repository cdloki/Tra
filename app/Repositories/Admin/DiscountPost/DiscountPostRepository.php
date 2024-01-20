<?php

namespace App\Repositories\Admin\DiscountPost;

use App\Repositories\Admin\DiscountPost\DiscountPostRepositoryInterface;
use App\Models\Posts;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

use Carbon\Carbon;
class DiscountPostRepository implements DiscountPostRepositoryInterface
{
    protected $tDiscountPost;

    public function __construct(
        Posts $tDiscountPost
    )
    {
        $this->tDiscountPost = $tDiscountPost;
    }

    public function getListDiscountPost($filter)
    {
        $filter["type"] = 3;
        return $this->tDiscountPost->getListPost($filter);
    }

    public function getDetailDiscountPost($id)
    {
        $data = $this->tDiscountPost->getOnePost($id);
        // $data["url_post"] = substr($data["url_post"], 1);
        return $data;
    }


    public function storeDiscountPost($data)
    {
        DB::beginTransaction();
        try {
            $dataStoreDiscountPost = [
                'code_post' => generate_uuid(),
                'name_post' => $data['name_post'],
                'url_post' => $data['url_post'],
                'image_post' => $data['image_post'],
                'description_post' => $data['description_post'],
                'title_seo_post' => $data['title_seo'],
                'description_seo_post' => strip_tags($data['description_seo']),
                'keyword_seo_post' => $data['dataTagSeo'],
                'content_post' => $data['content_post'],
                'type' => 3,
            ];
            if ($dataStoreDiscountPost['url_post'] == NULL) {
                $dataStoreDiscountPost["url_post"] = ChangeToSlug($data['name_post']);
            }
            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;

            $id = $this->tDiscountPost->store($dataStoreDiscountPost);

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



    public function changeStatus($id)
    {
        DB::beginTransaction();
        try {
            $dataDiscountPost = $this->tDiscountPost->getOnePost($id);
            $dataUpdate["id"] = $id;
            $dataDiscountPost["status"] == 0 ? $dataUpdate["status"] = 1: $dataUpdate["status"] = 0;
            $id = $this->tDiscountPost->edit($dataUpdate);
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
    public function removeDiscountPost($id)
    {
        DB::beginTransaction();
        try {
            $id = $this->tDiscountPost->remove($id);
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



    public function updateDiscountPost($data)
    {
        DB::beginTransaction();
        try {
            $dataStoreDiscountPost = [
                'id' => $data['id'],
                'name_post' => $data['name_post'],
                'url_post' => $data['url_post'],
                'image_post' => $data['image_post'],
                'description_post' => $data['description_post'],
                'title_seo_post' => $data['title_seo'],
                'description_seo_post' => strip_tags($data['description_seo']),
                'keyword_seo_post' => $data['dataTagSeo'],
                'type' => 3,
                'content_post' => $data['content_post'],

            ];
            if ($dataStoreDiscountPost['url_post'] == NULL) {
                $dataStoreDiscountPost["url_post"] = ChangeToSlug($data['name_post']);
            }
            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;
            $id = $this->tDiscountPost->edit($dataStoreDiscountPost);
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
