<?php

namespace App\Http\Controllers\UserController;
use App\Http\Controllers\Controller;
use App\Repositories\User\HomePage\HomePageRepositoryInterface;
use App\Repositories\SEO\SEORepositoryInterface;

class HomePageController extends Controller
{
    protected $rHomePage;
    public function __construct(

        HomePageRepositoryInterface $rHomePage,
        SEORepositoryInterface $rSEO

    )
    {

        $this->rHomePage = $rHomePage;
        $this->rSEO = $rSEO;

    }
    public function index()
    {
        $filter = null;
        $dataHome["category"] = $this->rHomePage->getDataCategory($filter);
        $dataHome["banner"] = $this->rHomePage->getDataBanner($filter);
        $dataHome["blog"] = $this->rHomePage->getDataPost($filter);
        $dataHome["product"] = $this->rHomePage->getDataProduct($filter);
        $dataHome["room-product"] = $this->rHomePage->getDataRoom($filter);
        $dataHome["slider"] = $this->rHomePage->getDataSlider($filter);
        $dataHome["SEO"] = $this->rSEO->getDataSEO($page = null, $type = null, $id = null);
        $dataHome["banner_right"] = $this->rHomePage->getDataBannerRight($filter);

        return view('users-layouts.pages.home-page.index',
        [
        'dataHome' => $dataHome,
        ]);
    }
}
