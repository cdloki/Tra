<?php

namespace App\Repositories\SEO;

use App\Repositories\SEO\SEORepositoryInterface;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Models\Settings;
use App\Models\Posts;
use App\Models\Categorys;
use App\Models\Products;
use App\Models\Rooms;
use App\Models\MappingProductImage;






class SEORepository implements SEORepositoryInterface
{
    protected $tSEOPost;
    protected $tSEOSetting;
    protected $tSEOCategory;
    protected $tSEOProduct;
    protected $tSEORoom;
    protected $tMappingProductImage;

    public function __construct(
        Posts $tSEOPost,
        Settings $tSEOSetting,
        Products $tSEOProduct,
        MappingProductImage $tMappingProductImage,
        Categorys $tSEOCategory,
        Rooms $tSEORoom


    )
    {
        $this->tSEOPost = $tSEOPost;
        $this->tSEOSetting = $tSEOSetting;
        $this->tSEOCategory = $tSEOCategory;
        $this->tSEOProduct = $tSEOProduct;
        $this->tSEORoom = $tSEORoom;
        $this->tMappingProductImage = $tMappingProductImage;

    }


    public function getDataSEO( $page, $type, $id)
    {

        $data = $this->tSEOSetting->getOneSetting();
              $dataSEO = [
                'author' => $data['title_website'],
                // 'google_signin_client_id'
                'title' => $data['title_website'],
                'image' => $data['image_seo_website'],
                'description' => $data['description_seo_website'],
                'keywords' => $data['keyword_seo_website'],
                'fb_app_id' => $data['facebook_social_website'],
                'image_alt' => $data['title_website'],
                'site_name' => $data['title_website'],
                'url' => asset(''),
              ];
        switch ($page) {
            case 'home':

              break;
            case 'post':
                if (!empty($id) && $type == 3){
                    $dataPost = $this->tSEOPost->getOnePost($id);
                } else {
                    $dataPost = $this->tSEOPost->getOnePostWithType($type);
                }
                if (!empty($dataPost["title_seo_post"])){
                    $dataSEO['title'] = "VIỆT LONG TRÀ - ".$dataPost['title_seo_post'];
                }
                if (!empty($dataPost["description_seo_post"])){
                    $dataSEO['description'] = $dataPost['description_seo_post'];
                }
                if (!empty($dataPost["keyword_seo_post"])){
                    $dataSEO['keywords'] = $dataPost['keyword_seo_post'];
                }

                if (!empty($dataPost["image_post"])){
                    $dataSEO['image'] = $dataPost['image_post'];
                }
                if (!empty($dataPost["url_post"])){
                    $dataSEO['url'] = route('discount-post.show', ['slug' => $dataPost["url_post"]]);

                }
                break;
            case 'category':
                $dataCategory = $this->tSEOCategory->getOneCategory($id);
                if (!empty($dataCategory["title_seo_category"])){
                    $dataSEO['title'] = "VIỆT LONG TRÀ - ".$dataCategory['title_seo_category'];
                }
                if (!empty($dataCategory["description_seo_category"])){
                    $dataSEO['description'] = $dataCategory['description_seo_category'];
                }
                if (!empty($dataCategory["keyword_seo_category"])){
                    $dataSEO['keywords'] = $dataCategory['keyword_seo_category'];
                }
                if (!empty($dataCategory["image_category"])){
                    $dataSEO['image'] = $dataCategory['image_category'];
                }
                if (!empty($dataCategory["url_category"])){
                    $dataSEO['url'] = route('category.index', ['slug' => $dataCategory["url_category"]]);
                }
                break;
            case 'product':

                $filter["id_product"] = $id;
                $filter["main_image"] = 1;
                $dataProductImage = $this->tMappingProductImage->getListMappingProductImage($filter)->first();
                $dataProduct = $this->tSEOProduct->getOneProduct($id);
                if (!empty($dataProduct["name_product"])){
                    $dataSEO['title'] = $dataProduct['name_product'];
                }
                if (!empty($dataProduct["note"])){
                    $dataSEO['description'] = $dataProduct['note'];
                }
                if (!empty($dataProduct["title_seo_product"])){
                    $dataSEO['title'] = "VIỆT LONG TRÀ - ".$dataProduct['title_seo_product'];
                }
                if (!empty($dataProduct["description_seo_product"])){
                    $dataSEO['description'] = $dataProduct['description_seo_product'];
                }
                if (!empty($dataProduct["keyword_seo_product"])){
                    $dataSEO['keywords'] = $dataProduct['keyword_seo_product'];
                }

                if (!empty($dataProductImage["url_image"])){
                    $dataSEO['image'] = $dataProductImage['url_image'];
                }
                if (!empty($dataProduct["url_product"])){
                    $dataSEO['url'] = route('detail-product', ['slug' => $dataProduct["url_product"]]);
                }
                break;
            default:
            'code to be executed if n=label1';
        }
        $htmlSEO = $this->renderHTMLSEO($dataSEO);
        return $htmlSEO;
    }

    public function renderHTMLSEO($data)
    {
        $html = "
        <title>".$data["title"]."</title>
        <meta name='author' content='".$data["author"]."'>
        <meta name='google-signin-client_id' content=''>
        <meta name='title' content='".$data["title"]."' />
        <meta name='image' content='".asset($data["image"])."' />
        <meta name='description'
            content='".strip_tags($data["description"])."'>
        <meta name='keywords'
            content='".$data["keywords"]."'>

        <!-- Open Graph / Facebook -->
        <meta property='og:locale' content='vi_vn' />
        <meta property='fb:app_id' content='".$data["fb_app_id"]."' />
        <meta property='og:image' content='".asset($data["image"])."' />
        <meta property='og:image:alt' content='".$data["title"]."' />
        <meta property='og:title' content='".$data["title"]."' />
        <meta property='og:type' content='article' />
        <meta property='og:site_name' content='".$data["title"]."'>
        <meta property='og:url' content='".$data["url"]."' />
        <meta property='og:description'
            content='".strip_tags($data["description"])."'>
        <meta property='og:keywords'
            content='".$data["keywords"]."'>

        <meta property='article:publisher' content='https://www.facebook.com/traoolongtaidanang'>
        <meta property='article:author' content='https://www.facebook.com/traoolongtaidanang'>
        <meta property='article:published_time'
            content='2024-01-24 15:59:47'>
        <meta property='article:modified_time' content='2024-01-26 15:59:47'>
        <meta property='article:tag'
            content='".$data["keywords"]."'>

        <link rel='canonical' href='".$data["url"]."' />
        <link rel='alternate' href='".$data["url"]."' hreflang='vi-vn' />
        <meta name='robots' content='index, follow'>
        <meta name='googlebot' content='index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1'>
        <meta name='bingbot' content='index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1'>

        <!-- Twitter -->
        <meta name='twitter:site' content='".$data["author"]."'>
        <meta name='twitter:card' content='summary_large_image'>
        <meta name='twitter:url' content='".$data["url"]."'>
        <meta name='twitter:title' content='".$data["title"]."'>
        <meta name='twitter:description'
            content='".strip_tags($data["description"])."'>
        <meta name='twitter:keywords'
            content='".$data["keywords"]."'>
        <meta name='twitter:image' content='".asset($data["image"])."'>
        <meta name='twitter:image:alt' content='".$data["title"]."'>
        ";
        return $html;
    }


}

