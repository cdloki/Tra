<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Repositories\SiteMap\SiteMapRepositoryInterface;

class SiteMapController extends Controller
{
    protected $rSiteMap;
    public function __construct(

        SiteMapRepositoryInterface $rSiteMap
    )
    {

        $this->rSiteMap = $rSiteMap;
    }
    public function index()
    {
        return $this->rSiteMap->createDataSiteMap();

    }
}
