<?php

namespace App\Http\Controllers\UserController;
use App\Http\Controllers\Controller;
use App\Repositories\User\SearchProduct\SearchProductRepositoryInterface;
use Illuminate\Http\Request;

class SearchProductController extends Controller
{
    protected $rSearchProduct;
    public function __construct(

        SearchProductRepositoryInterface $rSearchProduct

    )
    {

        $this->rSearchProduct = $rSearchProduct;

    }
    public function index(Request $request)
    {
        $filter["keyword"] = $request->data;
        return $this->rSearchProduct->getListProduct($filter);

    }
}
