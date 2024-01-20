<?php

namespace App\Http\Controllers\AdminController;
use App\Http\Controllers\Controller;

// use App\Repositories\Mapping\MappingRepositoryInterface;
use App\Repositories\Admin\Setting\SettingRepositoryInterface;

use Illuminate\Http\Request;

class SettingsController  extends Controller
{
    protected $rSettings;
    public function __construct(

        SettingRepositoryInterface $rSettings
    )
    {

        $this->rSettings = $rSettings;
    }

    public function index()
    {
        $dataSetting = $this->rSettings->getDetailSetting();
        return view('admin-layouts.pages.settings.edit',
            [
            'dataSetting' => $dataSetting,
            ]);
    }

    // public function edit()
    // {
    //     $type = 2;
    //     $dataSetting = $this->rSettings->getDetailSetting($type);
    //     return view('admin-layouts.pages.Settings.edit',
    //         [
    //         'dataSetting' => $dataSetting,
    //         ]);
    // }

    public function update(Request $request)
    {
        $dataSetting = $request->all();
        return $this->rSettings->updateSetting($dataSetting);
    }

}
