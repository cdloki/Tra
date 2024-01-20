<?php

namespace App\Http\Controllers\UserController;
use App\Http\Controllers\Controller;
use App\Repositories\User\DiscountPage\DiscountPageRepositoryInterface;
use App\Repositories\SEO\SEORepositoryInterface;
use Illuminate\Http\Request;

class DiscountPageController extends Controller
{
    protected $rDiscountPage;
    public function __construct(

        DiscountPageRepositoryInterface $rDiscountPage,
        SEORepositoryInterface $rSEO

    )
    {

        $this->rDiscountPage = $rDiscountPage;
        $this->rSEO = $rSEO;

    }
    public function index(Request $request)
    {
        $filter['keyword'] = $request->keyword;
        $dataDiscount["discount"] = $this->rDiscountPage->getDataDiscount($filter);
        $dataDiscount["discount-new"] = $this->rDiscountPage->getDataDiscountNew();
        $dataDiscount["SEO"] = $this->rSEO->getDataSEO($page = null, $type = null, $id = null);
        $dataDiscount["filter"] = $filter['keyword'];
        return view('users-layouts.pages.discount-page.index',
        [
        'dataDiscount' => $dataDiscount,
        ]);
    }

    public function show($slug)
    {
        $filter[] = null;
        $dataDiscount["discount"] = $this->rDiscountPage->getDataDetailDiscount($slug);
        $dataDiscount["discount-new"] = $this->rDiscountPage->getDataDiscountNew();
        $dataDiscount["SEO"] = $this->rSEO->getDataSEO($page = "post", $type = 3, $id = $dataDiscount["discount"]["id"]);
        // renderSEO("post",,id_post);
        return view('users-layouts.pages.detail-discount-page.index',
        [
        'dataDiscount' => $dataDiscount,
        ]);
    }
}
