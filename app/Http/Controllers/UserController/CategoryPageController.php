<?php

namespace App\Http\Controllers\UserController;
use App\Http\Controllers\Controller;
use App\Repositories\User\CategoryPage\CategoryPageRepositoryInterface;
use App\Repositories\SEO\SEORepositoryInterface;

class CategoryPageController extends Controller
{
    protected $rCategoryPage;
    public function __construct(

        CategoryPageRepositoryInterface $rCategoryPage,
        SEORepositoryInterface $rSEO

    )
    {

        $this->rCategoryPage = $rCategoryPage;
        $this->rSEO = $rSEO;

    }
    public function index($slug)
    {
        // dd($slug);
        $filter[] = null;
        $dataCategory["category"] = $this->rCategoryPage->getDataCategory($slug);

        // dd($dataCategory);
        if( $dataCategory["category"] != null ) {
            // $filter["id_category"] = ;
            $dataCategory["product"] = $this->rCategoryPage->getDataProduct($dataCategory["category"]["id"]);
            $dataCategory["total"] = count($dataCategory["product"]);

            $dataCategory["SEO"] = $this->rSEO->getDataSEO($page = "category", $type = null, $id = $dataCategory["category"]["id"]);

        }
        return view('users-layouts.pages.category-page.index',
        [
        'dataCategory' => $dataCategory,
        ]);
        // return view('users-layouts.pages.category-page.index');
    }
}
