<?php

namespace App\Http\ViewCompoers;
use Illuminate\View\View;
use App\Repositories\Admin\Setting\SettingRepositoryInterface;

// use App\
class SettingCompoers
{
    protected $Setting = [];
    /**
     * Return $dSetting
     */
    protected $rSetting;
    public function __construct(

        SettingRepositoryInterface $rSetting
    )
    {

        $this->rSetting = $rSetting;
    }

    public function getSetting()
    {
        return $this->rSetting->getDetailSetting();
    }
    // public function getSettingRoom()
    // {
    //     $filter = null;
    //     return $this->rSetting->getSettingRoom($filter);
    // }
    // public function getSettingDiscount()
    // {
    //     $filter = null;
    //     return $this->rSetting->getDataPost($filter);
    // }
    public function compose(View $view)
    {
        $view->with('Setting', $this->getSetting());

    }
}
