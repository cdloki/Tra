<?php

namespace App\Repositories\Admin\Info;

use App\Repositories\Admin\Info\InfoRepositoryInterface;
use App\Models\Posts;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

use Carbon\Carbon;
class InfoRepository implements InfoRepositoryInterface
{
    protected $tCategory;

    public function __construct(
        Posts $tPost
    )
    {
        $this->tPost = $tPost;
    }

    public function getDetailInfo($type)
    {
        $data = $this->tPost->getOnePostWithType($type);
        if($data == null) {
            $dataStorePost = [
                'code_post' => "info",
                'name_post' => "info",
                'url_post' => "info",
                'description_post' => "info",
                'title_seo_post' => "info",
                'type' => "1",
                'status' => "1",
            ];
            $idPost = $this->tPost->store($dataStorePost);
            if($idPost != null) {
                $data = $this->tPost->getOnePostWithType($type);
            }
        }
        return $data;
    }


    public function updateInfo($data)
    {
        DB::beginTransaction();
        try {
            $dataStorePost = [
                'id' => $data['id'],
                'description_post' => $data['description_post'],
                'title_seo_post' => $data['title_seo'],
                'description_seo_post' => strip_tags($data['description_seo']),
                'keyword_seo_post' => $data['dataTagSeo'],
            ];
            // if ($dataStoreCategory['url_post'] == NULL) {
            //     $dataStoreCategory["url_post"] = ChangeToSlug($data['name_post']);
            // }
            // $value['create_by_id'] = Auth::guard('users')->user()->id;
            // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;
            $id = $this->tPost->edit($dataStorePost);

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
