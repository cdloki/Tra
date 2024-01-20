<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;
// use App\Http\Requests\CreatSlidersRequest;
// use App\Http\Requests\UpdateSlidersRequest;

use App\Repositories\Admin\Slider\SliderRepositoryInterface;

use Illuminate\Http\Request;

class SlidersController  extends Controller
{
    protected $rSlider;
    public function __construct(

        SliderRepositoryInterface $rSlider
    )
    {
        $this->rSlider = $rSlider;
    }

    public function index()
    {
        $filter = null;
        $dataSlider = $this->rSlider->getListSlider($filter);
        return view('admin-layouts.tables.slidersTable',
            [
            'dataSlider' => $dataSlider,
            ]);
    }

    public function getValue(Request $request)
    {
        $filter = $request->all();
        $dataSlider = $this->rSlider->getListSlider($filter);
        return $dataSlider->toArray();
    }


    public function create()
    {
        return view('admin-layouts.pages.sliders.create');
    }

    public function store(Request $request)
    {
        $dataSlider = $request->all();
        return $this->rSlider->storeSlider($dataSlider);
    }

    public function show($id)
    {
        $dataSlider = $this->rSlider->getDetailSlider($id);
        return view('admin-layouts.pages.sliders.detail',
            [
            'dataSlider' => $dataSlider,
            ]);
    }

    public function edit($id)
    {
        $dataSlider = $this->rSlider->getDetailSlider($id);
        return view('admin-layouts.pages.sliders.edit',
            [
            'dataSlider' => $dataSlider,
            ]);
    }

    public function changeStatus(Request $request)
    {
        $id = $request->id;
        return $this->rSlider->changeStatus($id);
    }

    public function update(Request $request)
    {
        $dataSlider = $request->all();
        return $this->rSlider->updateSlider($dataSlider);
    }

    public function remove(Request $request)
    {
        $id = $request->id;
        return $this->rSlider->removeSlider($id);
    }
}
