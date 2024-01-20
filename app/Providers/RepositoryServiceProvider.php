<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Repositories\Admin\Room\RoomRepository;
use App\Repositories\Admin\Room\RoomRepositoryInterface;
use App\Repositories\Admin\Category\CategoryRepository;
use App\Repositories\Admin\Category\CategoryRepositoryInterface;
use App\Repositories\Admin\Mapping\MappingRepository;
use App\Repositories\Admin\Mapping\MappingRepositoryInterface;
use App\Repositories\Admin\Info\InfoRepository;
use App\Repositories\Admin\Info\InfoRepositoryInterface;
use App\Repositories\Admin\Contacst\ContacstRepository;
use App\Repositories\Admin\Contacst\ContacstRepositoryInterface;
use App\Repositories\Admin\DiscountPost\DiscountPostRepository;
use App\Repositories\Admin\DiscountPost\DiscountPostRepositoryInterface;
use App\Repositories\Admin\Product\ProductRepository;
use App\Repositories\Admin\Product\ProductRepositoryInterface;
use App\Repositories\Admin\Slider\SliderRepository;
use App\Repositories\Admin\Slider\SliderRepositoryInterface;
use App\Repositories\Admin\Setting\SettingRepository;
use App\Repositories\Admin\Setting\SettingRepositoryInterface;
use App\Repositories\Admin\Banner\BannerRepository;
use App\Repositories\Admin\Banner\BannerRepositoryInterface;

use App\Repositories\Admin\Users\UsersRepository;
use App\Repositories\Admin\Users\UsersRepositoryInterface;

use App\Repositories\User\HomePage\HomePageRepository;
use App\Repositories\User\HomePage\HomePageRepositoryInterface;
use App\Repositories\User\ContactPage\ContactPageRepository;
use App\Repositories\User\ContactPage\ContactPageRepositoryInterface;
use App\Repositories\User\AboutPage\AboutPageRepository;
use App\Repositories\User\AboutPage\AboutPageRepositoryInterface;
use App\Repositories\User\DetailProductPage\DetailProductPageRepository;
use App\Repositories\User\DetailProductPage\DetailProductPageRepositoryInterface;
use App\Repositories\User\CategoryPage\CategoryPageRepository;
use App\Repositories\User\CategoryPage\CategoryPageRepositoryInterface;
use App\Repositories\User\DiscountPage\DiscountPageRepository;
use App\Repositories\User\DiscountPage\DiscountPageRepositoryInterface;
use App\Repositories\User\Menu\MenuRepository;
use App\Repositories\User\Menu\MenuRepositoryInterface;
use App\Repositories\User\SearchProduct\SearchProductRepository;
use App\Repositories\User\SearchProduct\SearchProductRepositoryInterface;
use App\Repositories\User\RoomPage\RoomPageRepository;
use App\Repositories\User\RoomPage\RoomPageRepositoryInterface;

use App\Repositories\SEO\SEORepository;
use App\Repositories\SEO\SEORepositoryInterface;
use App\Repositories\SiteMap\SiteMapRepository;
use App\Repositories\SiteMap\SiteMapRepositoryInterface;
class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->singleton(RoomRepositoryInterface::class, RoomRepository::class);
        $this->app->singleton(CategoryRepositoryInterface::class, CategoryRepository::class);
        $this->app->singleton(MappingRepositoryInterface::class, MappingRepository::class);
        $this->app->singleton(InfoRepositoryInterface::class, InfoRepository::class);
        $this->app->singleton(ContacstRepositoryInterface::class, ContacstRepository::class);
        $this->app->singleton(DiscountPostRepositoryInterface::class, DiscountPostRepository::class);
        $this->app->singleton(ProductRepositoryInterface::class, ProductRepository::class);
        $this->app->singleton(SliderRepositoryInterface::class, SliderRepository::class);
        $this->app->singleton(BannerRepositoryInterface::class, BannerRepository::class);
        $this->app->singleton(UsersRepositoryInterface::class, UsersRepository::class);

        $this->app->singleton(SettingRepositoryInterface::class, SettingRepository::class);


        $this->app->singleton(HomePageRepositoryInterface::class, HomePageRepository::class);
        $this->app->singleton(ContactPageRepositoryInterface::class, ContactPageRepository::class);
        $this->app->singleton(AboutPageRepositoryInterface::class, AboutPageRepository::class);
        $this->app->singleton(DetailProductPageRepositoryInterface::class, DetailProductPageRepository::class);
        $this->app->singleton(CategoryPageRepositoryInterface::class, CategoryPageRepository::class);
        $this->app->singleton(DiscountPageRepositoryInterface::class, DiscountPageRepository::class);
        $this->app->singleton(MenuRepositoryInterface::class, MenuRepository::class);
        $this->app->singleton(SearchProductRepositoryInterface::class, SearchProductRepository::class);
        $this->app->singleton(RoomPageRepositoryInterface::class, RoomPageRepository::class);

        $this->app->singleton(SEORepositoryInterface::class, SEORepository::class);
        $this->app->singleton(SiteMapRepositoryInterface::class, SiteMapRepository::class);


    }
}
