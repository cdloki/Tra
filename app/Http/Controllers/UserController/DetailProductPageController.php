<?php

namespace App\Http\Controllers\UserController;
use App\Http\Controllers\Controller;
use App\Repositories\User\DetailProductPage\DetailProductPageRepositoryInterface;
use App\Repositories\SEO\SEORepositoryInterface;

class DetailProductPageController extends Controller
{
    protected $rDetailProductPage;

    public function __construct(

        DetailProductPageRepositoryInterface $rDetailProductPage,
        SEORepositoryInterface $rSEO

    )
    {

        $this->rDetailProductPage = $rDetailProductPage;
        $this->rSEO = $rSEO;

    }
    public function index($slug)
    {
        $dataDetailProduct["detail-product"] = $this->rDetailProductPage->getDataProduct($slug);
        $dataDetailProduct["random-product"] = $this->rDetailProductPage->getDataRandomProduct();
        $dataDetailProduct["SEO"] = $this->rSEO->getDataSEO($page = null, $type = null, $id = null);

        return view('users-layouts.pages.detail-product-page.index',
        [
        'dataDetailProduct' => $dataDetailProduct,
        ]);
    }
}
