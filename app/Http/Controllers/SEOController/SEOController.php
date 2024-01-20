<?php

namespace App\Http\Controllers\SEOController;
use App\Http\Controllers\Controller;
use App\Repositories\SEO\SEORepositoryInterface;
use Illuminate\Http\Request;

class SEOController extends Controller
{
    protected $rSEO;
    public function __construct(

        SEORepositoryInterface $rSEO
    )
    {

        $this->rSEO = $rSEO;
    }
    public function index(Request $request)
    {
        $data = $request->all();
        return $this->rSEO->getDataSEO($page = $data["page"], $type = $data["type"], $type = $data["id"]);
    }
}
