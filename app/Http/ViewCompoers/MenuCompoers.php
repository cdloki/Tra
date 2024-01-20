<?php

namespace App\Http\ViewCompoers;
use Illuminate\View\View;
use App\Repositories\User\Menu\MenuRepositoryInterface;

// use App\
class MenuCompoers
{
    protected $menu = [];
    /**
     * Return $dmenu
     */
    protected $rMenu;
    public function __construct(

        MenuRepositoryInterface $rMenu
    )
    {

        $this->rMenu = $rMenu;
    }

    public function getMenuCategory()
    {
        $filter = null;
        return $this->rMenu->getDataCategory($filter);
    }
    public function getMenuRoom()
    {
        $filter = null;
        return $this->rMenu->getMenuRoom($filter);
    }
    public function getMenuDiscount()
    {
        $filter = null;
        return $this->rMenu->getDataPost($filter);
    }
    public function compose(View $view)
    {
        $view->with('menuCategory', $this->getMenuCategory());

        // $view->with('menuRoom', $this->getMenuRoom());
        $view->with('menuDiscount', $this->getMenuDiscount());
    }
}
