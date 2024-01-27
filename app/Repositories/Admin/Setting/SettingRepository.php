<?php

namespace App\Repositories\Admin\Setting;

use App\Repositories\Admin\Setting\SettingRepositoryInterface;
use App\Models\Settings;
// use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
// use App\Models\MappingSettingCategory;

use Carbon\Carbon;
class SettingRepository implements SettingRepositoryInterface
{
    protected $tSetting;
    protected $tMappingSettingCategory;

    public function __construct(
        Settings $tSetting
        // MappingSettingCategory $tMappingSettingCategory
    )
    {
        $this->tSetting = $tSetting;
        // $this->tMappingSettingCategory = $tMappingSettingCategory;

    }

    public function getDetailSetting()
    {
        $data = $this->tSetting->getOneSetting();
        if($data == null) {
            $dataStoreSetting = [
                'title_website' => null,
                'facebook_social_website' => null,
                'googleanaly_social_website' => null,
                'messenger_social_website' => null,
                'color_general_website' => null,
                'fontsize_general_website' => null,
                'icon_general_website' => null,
                'logo_general_website' => null,
                'colorbg_general_website' => null,
                'keyword_seo_website' => null,
                'title_seo_website' => null,
                'description_seo_website' => null,
                'image_seo_website' => null,
                'zalo_website' => null,
                'facebook_website' => null,
                'fanpage_website' => null,
                'group_website' => null,
                'youtube_website' => null,
                'tiktok_website' => null,
                'phone_website' => null,
                'address_website' => null,
                'email_website' => null,
                'shoppe_website' => null,
                'google_site_verification' => null,


            ];
            $idSetting = $this->tSetting->store($dataStoreSetting);
            if($idSetting != null) {
                $data = $this->tSetting->getOneSetting();
            }
        }
        return $data;
    }



    // public function storeSetting($data)
    // {
    //     DB::beginTransaction();
    //     try {
    //         $dataStoreSetting = [
    //             'code_Setting' => $data['code_Setting'],
    //             'name_Setting' => $data['name_Setting'],
    //             'url_Setting' => $data['url_Setting'],
    //             'image_Setting' => $data['image_Setting'],
    //             'description_Setting' => $data['description_Setting'],
    //             'title_seo_Setting' => $data['title_seo'],
    //             'description_seo_Setting' => $data['description_seo'],
    //             'keyword_seo_Setting' => $data['dataTagSeo'],
    //         ];
    //         if ($dataStoreSetting['url_Setting'] == NULL) {
    //             $dataStoreSetting["url_Setting"] = ChangeToSlug($data['name_Setting']);
    //         }
    //         // $value['create_by_id'] = Auth::guard('users')->user()->id;
    //         // $value['last_modify_by_id'] = Auth::guard('users')->user()->id;

    //         $id = $this->tSetting->store($dataStoreSetting);

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

    // public function getDetailSetting($id)
    // {
    //     $data = $this->tSetting->getOneSetting($id);
    //     // $data["url_Setting"] = substr($data["url_Setting"], 1);
    //     return $data;
    // }

    // public function changeStatus($id)
    // {
    //     DB::beginTransaction();
    //     try {
    //         $dataSetting = $this->tSetting->getOneSetting($id);
    //         $dataUpdate["id"] = $id;
    //         $dataSetting["status"] == 0 ? $dataUpdate["status"] = 1: $dataUpdate["status"] = 0;
    //         $id = $this->tSetting->edit($dataUpdate);
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
    // public function removeSetting($id)
    // {
    //     DB::beginTransaction();
    //     try {
    //         $this->tSetting->remove($id);
    //         $this->tMappingSettingCategory->removeWithIdSetting($id);

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



    public function updateSetting($data)
    {

        DB::beginTransaction();
        try {
            $dataStoreSetting = [
                'id' => $data['id'],
                'title_website' => $data['title_website'],
                'facebook_social_website' => $data['facebook_social_website'],
                'googleanaly_social_website' => $data['googleanaly_social_website'],
                'messenger_social_website' => $data['messenger_social_website'],
                'color_general_website' => $data['color_general_website'],
                'fontsize_general_website' => $data['fontsize_general_website'],
                'icon_general_website' => $data['icon_general_website'],
                'logo_general_website' => $data['logo_general_website'],
                // 'colorbg_general_website' => $data['colorbg_general_website'],
                // 'colorbg_general_website' => null,
                'keyword_seo_website' => $data['dataTagSeo'],
                'title_seo_website' => $data['title_seo_website'],
                'description_seo_website' => strip_tags($data['description_seo_website']),
                'image_seo_website' => $data['image_seo_website'],
                'zalo_website' => $data['zalo_website'],
                'facebook_website' => $data['facebook_website'],
                'fanpage_website' => $data['fanpage_website'],
                'group_website' => $data['group_website'],
                'youtube_website' => $data['youtube_website'],
                'tiktok_website' => $data['tiktok_website'],
                'phone_website' => $data['phone_website'],
                'address_website' => $data['address_website'],
                'email_website' => $data['email_website'],
                'shoppe_website' => $data['shoppe_website'],
                'google_site_verification' => $data['google_site_verification'],
            ];
            $id = $this->tSetting->edit($dataStoreSetting);
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
