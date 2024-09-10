<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;
use App\Http\Requests\CreatProductsRequest;
use App\Http\Requests\UpdateProductsRequest;

use App\Repositories\Admin\Product\ProductRepositoryInterface;
// use App\Repositories\Room\RoomRepositoryInterface;
use Carbon\Carbon;

use Illuminate\Http\Request;

class ProductsController  extends Controller
{
    protected $rProduct;
    // protected $rRoom;
    public function __construct(

        ProductRepositoryInterface $rproduct
    //     RoomRepositoryInterface $rRoom
    )
    {
        $this->rproduct = $rproduct;
    //     $this->rRoom = $rRoom;
    }

    public function index()
    {
        $filter = null;
        $dataProduct = $this->rproduct->getListproduct($filter);
        return view('admin-layouts.tables.productsTable',
            [
            'dataProduct' => $dataProduct,
            ]);
    }

    public function create()
    {
        return view('admin-layouts.pages.products.create');

    }

    public function store(CreatProductsRequest $request)
    {
        $dataProduct = $request->all();
        return $this->rproduct->storeProduct($dataProduct);
    }

    public function show($id)
    {
        $dataProduct = $this->rproduct->getDetailproduct($id);
        return view('admin-layouts.pages.products.detail',
            [
            'dataProduct' => $dataProduct,
            ]);
    }

    public function edit($id)
    {
        $dataProduct = $this->rproduct->getDetailproduct($id);
        return view('admin-layouts.pages.products.edit',
            [
            'dataProduct' => $dataProduct,
            ]);
    }

    public function changeStatus(Request $request)
    {
        $id = $request->id;
        return $this->rproduct->changeStatus($id);
    }

    public function update(UpdateproductsRequest $request)
    {
        $dataProduct = $request->all();
        return $this->rproduct->updateproduct($dataProduct);
    }

    public function remove(Request $request)
    {
        $id = $request->id;
        return $this->rproduct->removeProduct($id);
    }
    // public function updateimg(Request $request)
    // {
    //     dd($request->all());
        // $dataProduct = $this->rproduct->getDetailproduct($id);
        // $unique = Carbon::now()->format('YmdHisu');
        // return view('admin-layouts.pages.products.edit',
        //     [
        //     'dataProduct' => $dataProduct,
        //     'unique' => $unique,
        //     ]);
    // }


}
