<?php

namespace App\Http\Controllers\UserController;
use App\Http\Controllers\Controller;
use App\Repositories\User\ContactPage\ContactPageRepositoryInterface;
use App\Repositories\SEO\SEORepositoryInterface;

class ContactPageController extends Controller
{
    protected $rContactPage;
    public function __construct(

        ContactPageRepositoryInterface $rContactPage,
        SEORepositoryInterface $rSEO

    )
    {

        $this->rContactPage = $rContactPage;
        $this->rSEO = $rSEO;

    }
    public function index()
    {
        $filter = null;
        $dataPost["contact"] = $this->rContactPage->getDataContact($filter);
        $dataPost["SEO"] = $this->rSEO->getDataSEO($page = "post", $type = 2, $id = null);
        // return view('users-layouts.pages.contact-page.index');
        return view('users-layouts.pages.contact-page.index',
        [
        'dataPost' => $dataPost,
        ]);
    }
}
// renderSEO("post",2);
