<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;

// use App\Repositories\Mapping\MappingRepositoryInterface;
use App\Repositories\Admin\Info\InfoRepositoryInterface;

use Illuminate\Http\Request;

class InfosController  extends Controller
{
    protected $rInfos;
    public function __construct(

        InfoRepositoryInterface $rInfos
    )
    {

        $this->rInfos = $rInfos;
    }

    public function index()
    {

        $type = 1;
        $dataInfo = $this->rInfos->getDetailInfo($type);
        return view('admin-layouts.pages.infos.detail',
            [
            'dataInfo' => $dataInfo,
            ]);
    }

    public function edit()
    {

        $type = 1;
        $dataInfo = $this->rInfos->getDetailInfo($type);
        return view('admin-layouts.pages.infos.edit',
            [
            'dataInfo' => $dataInfo,
            ]);
    }

    public function update(Request $request)
    {
        $dataInfo = $request->all();
        return $this->rInfos->updateInfo($dataInfo);
    }

}
