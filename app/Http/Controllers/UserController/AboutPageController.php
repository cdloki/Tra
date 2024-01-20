<?php

namespace App\Http\Controllers\UserController;
use App\Http\Controllers\Controller;
use App\Repositories\User\AboutPage\AboutPageRepositoryInterface;
use App\Repositories\SEO\SEORepositoryInterface;

class AboutPageController extends Controller
{
    protected $rAboutPage;
    public function __construct(

        AboutPageRepositoryInterface $rAboutPage,
        SEORepositoryInterface $rSEO

    )
    {

        $this->rAboutPage = $rAboutPage;
        $this->rSEO = $rSEO;

    }
    public function index()
    {
        $filter = null;
        $dataPost["about"] = $this->rAboutPage->getDataAbout($filter);
        $dataPost["SEO"] = $this->rSEO->getDataSEO($page = "post", $type = 1, $id = null);

        // return view('users-layouts.pages.about-page.index');
        return view('users-layouts.pages.about-page.index',
        [
        'dataPost' => $dataPost,
        ]);
    }
}
