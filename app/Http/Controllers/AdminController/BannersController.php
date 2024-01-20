<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;

// use App\Repositories\Mapping\MappingRepositoryInterface;
use App\Repositories\Admin\Banner\BannerRepositoryInterface;

use Illuminate\Http\Request;

class BannersController  extends Controller
{
    protected $rBanners;
    public function __construct(

        BannerRepositoryInterface $rBanners
    )
    {

        $this->rBanners = $rBanners;
    }

    public function index()
    {
        $dataBanner = $this->rBanners->getListBanner();

        return view('admin-layouts.tables.bannersTable',
            [
            'dataBanner' => $dataBanner,
            ]);
    }

    public function edit($id)
    {
        $dataBanner = $this->rBanners->getDetailBanner($id);
        return view('admin-layouts.pages.banners.edit',
            [
            'dataBanner' => $dataBanner,
            ]);
    }

    public function update(Request $request)
    {
        $dataBanner = $request->all();
        return $this->rBanners->updateBanner($dataBanner);
    }

}
