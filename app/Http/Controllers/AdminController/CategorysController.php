<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;
use App\Http\Requests\CreatCategorysRequest;
use App\Http\Requests\UpdateCategorysRequest;

use App\Repositories\Admin\Category\CategoryRepositoryInterface;

use Illuminate\Http\Request;

class CategorysController  extends Controller
{
    protected $rCategory;
    public function __construct(

        CategoryRepositoryInterface $rCategory
    )
    {
        $this->rCategory = $rCategory;
    }

    public function index()
    {
        $filter = null;
        $dataCategory = $this->rCategory->getListCategory($filter);
        return view('admin-layouts.tables.categorysTable',
            [
            'dataCategory' => $dataCategory,
            ]);
    }

    public function create()
    {
        return view('admin-layouts.pages.categorys.create');

    }

    public function store(CreatCategorysRequest $request)
    {
        $dataCategory = $request->all();
        return $this->rCategory->storeCategory($dataCategory);
    }

    public function show($id)
    {
        $dataCategory = $this->rCategory->getDetailCategory($id);
        return view('admin-layouts.pages.categorys.detail',
            [
            'dataCategory' => $dataCategory,
            ]);
    }

    public function edit($id)
    {
        $dataCategory = $this->rCategory->getDetailCategory($id);
        return view('admin-layouts.pages.categorys.edit',
            [
            'dataCategory' => $dataCategory,
            ]);
    }

    public function changeStatus(Request $request)
    {
        $id = $request->id;
        return $this->rCategory->changeStatus($id);
    }

    public function update(UpdateCategorysRequest $request)
    {
        $dataCategory = $request->all();
        return $this->rCategory->updateCategory($dataCategory);
    }

    public function remove(Request $request)
    {
        $id = $request->id;
        return $this->rCategory->removeCategory($id);
    }

    public function getValue(Request $request)
    {
        $filter = $request->all();
        $dataRoom = $this->rCategory->getListCategory($filter);
        return $dataRoom->toArray();
    }
}
