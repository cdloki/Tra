<?php

namespace App\Repositories\Admin\Banner;

use App\Repositories\Admin\Banner\BannerRepositoryInterface;
use App\Models\Banners;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
// use App\Models\MappingBannerCategory;

use Carbon\Carbon;
class BannerRepository implements BannerRepositoryInterface
{
    protected $tBanner;

    public function __construct(
        Banners $tBanner
        // MappingBannerCategory $tMappingBannerCategory
    )
    {
        $this->tBanner = $tBanner;
        // $this->tMappingBannerCategory = $tMappingBannerCategory;

    }

    public function getListBanner()
    {
        $filter["type_banner"] = ["banner"];
        $data = $this->tBanner->getListBanner($filter)->toarray();
        if(empty($data)) {
            $dataStoreBanner[] = [
                'type_banner' => "banner",
                'image_banner' => null,
                'url_banner' => null,
            ];
            $dataStoreBanner[] = [
                'type_banner' => "banner",
                'image_banner' => null,
                'url_banner' => null,
            ];
            $dataStoreBanner[] = [
                'type_banner' => "banner",
                'image_banner' => null,
                'url_banner' => null,
            ];
            $dataStoreBanner[] = [
                'type_banner' => "banner",
                'image_banner' => null,
                'url_banner' => null,
            ];
            $dataStoreBanner[] = [
                'type_banner' => "banner",
                'image_banner' => null,
                'url_banner' => null,
            ];
            $dataStoreBanner[] = [
                'type_banner' => "banner",
                'image_banner' => null,
                'url_banner' => null,
            ];
            $dataStoreBanner[] = [
                'type_banner' => "banner",
                'image_banner' => null,
                'url_banner' => null,
            ];
                $this->tBanner->store($dataStoreBanner);
                $data = $this->tBanner->getListBanner();
        }
        return $data;
    }



    // public function storeBanner($data)
    // {
    //     DB::beginTransaction();
    //     try {
    //         $dataStoreBanner = [
    //             'code_Banner' => $data['code_Banner'],
    //             'name_Banner' => $data['name_Banner'],
    //             'url_Banner' => $data['url_Banner'],
    //             'image_Banner' => $data['image_Banner'],
    //             'description_Banner' => $data['description_Banner'],
    //             'title_seo_Banner' => $data['title_seo'],
    //             'description_seo_Banner' => $data['description_seo'],
    //             'keyword_seo_Banner' => $data['dataTagSeo'],
    //         ];
    //         if ($dataStoreBanner['url_Banner'] == NULL) {
    //             $dataStoreBanner["url_Banner"] = ChangeToSlug($data['name_Banner']);
    //         }
    //         // $value['create_by_id'] = Auth::guard('users')->user()->id;
    //         // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;

    //         $id = $this->tBanner->store($dataStoreBanner);

    //         DB::commit();
    //         return [
    //             'error' => false,
    //             'message' => __('Tạo thành công!'),
    //         ];
    //     } catch (\Exception $exception) {
    //         DB::rollBack();
    //         return [
    //             'error' => true,
    //             'message' => __('Tạo thất bại!')
    //         ];
    //     }
    // }

    public function getDetailBanner($id)
    {
        $data = $this->tBanner->getOneBanner($id);
        // $data["url_Banner"] = substr($data["url_Banner"], 1);
        return $data;
    }

    // public function changeStatus($id)
    // {
    //     DB::beginTransaction();
    //     try {
    //         $dataBanner = $this->tBanner->getOneBanner($id);
    //         $dataUpdate["id"] = $id;
    //         $dataBanner["status"] == 0 ? $dataUpdate["status"] = 1: $dataUpdate["status"] = 0;
    //         $id = $this->tBanner->edit($dataUpdate);
    //         DB::commit();
    //         return [
    //             'error' => false,
    //             'message' => __('Cập nhật trạng thái thành công!'),
    //             'status' =>  $dataUpdate["status"],
    //         ];
    //     } catch (\Exception $exception) {
    //         DB::rollBack();
    //         return [
    //             'error' => true,
    //             'message' => __('Cập nhật trạng thái thất bại!')
    //         ];
    //     }
    // }
    // public function removeBanner($id)
    // {
    //     DB::beginTransaction();
    //     try {
    //         $this->tBanner->remove($id);
    //         $this->tMappingBannerCategory->removeWithIdBanner($id);

    //         DB::commit();
    //         return [
    //             'error' => false,
    //             'message' => __('Xóa thành công!'),
    //             'id' =>  $id,
    //         ];
    //     } catch (\Exception $exception) {
    //         DB::rollBack();
    //         return [
    //             'error' => true,
    //             'message' => __('Xóa thất bại!')
    //         ];
    //     }
    // }



    public function updateBanner($data)
    {

        DB::beginTransaction();
        try {
            $dataStoreBanner = [
                'id' => $data['id'],
                'image_banner' => $data['image_banner'],
                'name_banner' => $data['name_banner'],
                'description_banner' => $data['description_banner'],
                'url_banner' => $data['url_banner'],
            ];
            $id = $this->tBanner->edit($dataStoreBanner);
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
