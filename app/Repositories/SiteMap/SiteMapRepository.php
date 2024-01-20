<?php

namespace App\Repositories\SiteMap;

use App\Repositories\SiteMap\SiteMapRepositoryInterface;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Models\Settings;
use App\Models\Posts;
use App\Models\Categorys;
use App\Models\Products;
use App\Models\Rooms;
use File;





class SiteMapRepository implements SiteMapRepositoryInterface
{
    protected $tSiteMapPost;
    protected $tSiteMapSetting;
    protected $tSiteMapCategory;
    protected $tSiteMapProduct;
    protected $tSiteMapRoom;

    public function __construct(
        Posts $tSiteMapPost,
        Settings $tSiteMapSetting,
        Products $tSiteMapProduct,
        Categorys $tSiteMapCategory,
        Rooms $tSiteMapRoom


    )
    {
        $this->tSiteMapPost = $tSiteMapPost;
        $this->tSiteMapSetting = $tSiteMapSetting;
        $this->tSiteMapCategory = $tSiteMapCategory;
        $this->tSiteMapProduct = $tSiteMapProduct;
        $this->tSiteMapRoom = $tSiteMapRoom;

    }


    public function createDataSiteMap()
    {
        try {
            $sitemap = \App::make('sitemap');

            $sitemap->add(route('home'));
            $sitemap->add(route('contact'));
            $sitemap->add(route('info'));
            $sitemap->add(route('discount-post'));

            $filter = null;
            $filterPost["type"] = 3;
            $dataPost = $this->tSiteMapPost->getListPost($filterPost);
            foreach ($dataPost as $item) {
                $sitemap->add(route('discount-post.show',$item["url_post"]));
            }

            $dataCategory = $this->tSiteMapCategory->getListCategory($filter);
            foreach ($dataCategory as $item) {
                $sitemap->add(route('category.index',$item["url_category"]));
            }

            $dataRoom = $this->tSiteMapRoom->getListRoom($filter);
            foreach ($dataRoom as $item) {
                $sitemap->add(route('room.index',$item["url_room"]));
            }

            $dataProduct = $this->tSiteMapProduct->getListProduct($filter);
            foreach ($dataProduct as $item) {
                $sitemap->add(route('detail-product',$item["url_product"]));
            }

            $sitemap->store('xml', 'sitemap');
            if (File::exists(public_path() . '/sitemap.xml')) {
                chmod(public_path() . '/sitemap.xml', 0777);
            }

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
    // changefreq : là tần suất thay đổi nội dung. Nó có các giá trị (always, hourly, daily, weekly, monthly, yearly, never) với always là thay đổi theo giây, còn never là không bao giờ. Thông thường mình sẽ cấu hình trang chủ là daily, trang category là daily và bài viết là weekly.
    // priority : độ quan trọng (giá trị từ 0.0 đến 1.0) nó chỉ cho robots biết độ quan trọng trong nội dung của bạn, không có tác dụng trong việc xếp hạng. (thông thường mình để trang chủ là 1.0, danh mục và bài viết là 0.5, còn lại là 0.3)


}

