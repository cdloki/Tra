<?php
use Illuminate\Support\Facades\Redirect;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController\RoomsController;
use App\Http\Controllers\AdminController\CategorysController;
use App\Http\Controllers\AdminController\MappingController;
use App\Http\Controllers\AdminController\ProductsController;
use App\Http\Controllers\AdminController\InfosController;
use App\Http\Controllers\AdminController\ContacstsController;
use App\Http\Controllers\AdminController\DiscountPostsController;
use App\Http\Controllers\AdminController\SlidersController;
use App\Http\Controllers\AdminController\BannersController;
use App\Http\Controllers\AdminController\ChangePassWordController;
use App\Http\Controllers\AdminController\SiteMapController;


use App\Http\Controllers\AdminController\SettingsController;
// use App\Http\Controllers\AdminController\LoginController;



use App\Http\Controllers\UserController\HomePageController;
use App\Http\Controllers\UserController\ContactPageController;
use App\Http\Controllers\UserController\AboutPageController;
use App\Http\Controllers\UserController\DetailProductPageController;
use App\Http\Controllers\UserController\CategoryPageController;
use App\Http\Controllers\UserController\DiscountPageController;
use App\Http\Controllers\UserController\RoomPageController;

use App\Http\Controllers\UserController\SearchProductController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/linkstorage', function(){
	Artisan::call('storage:link');
});
Route::get('/laroute-generate', function() {
    Artisan::call('laroute:generate');
    // Do whatever you want either a print a message or exit
});


Route::get('/admins', 'App\Http\Controllers\AdminController\AdminController@login')->name('pages-login')->middleware('LoggedSuccessfully');;

Route::get('/admins/login', 'App\Http\Controllers\AdminController\AdminController@login')->name('pages-login')->middleware('LoggedSuccessfully');;
Route::post('/admins/check-login','App\Http\Controllers\AdminController\AdminController@checkLogin')->name('check-login')->middleware('LoggedSuccessfully');

Route::group(['middleware' => ['checkLogin']], function () {

    Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['checkLogin']], function () {
        \UniSharp\LaravelFilemanager\Lfm::routes();
    });

    Route::group(['prefix' => '/admins'], function () {
        // Route::get('/admin','App\Http\Controllers\AdminController\AdminController@index')->name('index');

        Route::get('/login-out','App\Http\Controllers\AdminController\AdminController@loginOut')->name('login-out');

        Route::get('/dashboard','App\Http\Controllers\AdminController\AdminController@index')->name('index');
        Route::get('/creat-site-map','App\Http\Controllers\AdminController\SiteMapController@index')->name('creat-site-map');
        Route::controller(RoomsController::class)->group(function () {
            Route::group(['prefix' => '/rooms'], function () {
                Route::get('/', 'index')->name('rooms.index');
                Route::get('/create', 'create')->name('rooms.create');
                Route::post('/', 'store')->name('rooms.store');
                Route::get('/{id}', 'show')->name('rooms.show');
                Route::get('/{id}/edit', 'edit')->name('rooms.edit');
                Route::post('/update', 'update')->name('rooms.update');
                Route::post('/change-status', 'changeStatus')->name('rooms.change-status');
                Route::post('/remove', 'remove')->name('rooms.remove');

                Route::post('/get-value', 'getValue')->name('rooms.getValue');

            });
        });
        Route::controller(CategorysController::class)->group(function () {
            Route::group(['prefix' => '/categorys'], function () {
                Route::get('/', 'index')->name('categorys.index');
                Route::get('/create', 'create')->name('categorys.create');
                Route::post('/', 'store')->name('categorys.store');
                Route::get('/{id}', 'show')->name('categorys.show');
                Route::get('/{id}/edit', 'edit')->name('categorys.edit');
                Route::post('/update', 'update')->name('categorys.update');
                Route::post('/change-status', 'changeStatus')->name('categorys.change-status');
                Route::post('/remove', 'remove')->name('categorys.remove');

                Route::post('/get-value', 'getValue')->name('categorys.getValue');

            });
        });

        Route::controller(ProductsController::class)->group(function () {
            Route::group(['prefix' => '/products'], function () {
                Route::get('/', 'index')->name('products.index');
                Route::get('/create', 'create')->name('products.create');
                Route::post('/', 'store')->name('products.store');
                Route::get('/{id}', 'show')->name('products.show');
                Route::get('/{id}/edit', 'edit')->name('products.edit');
                Route::post('/update', 'update')->name('products.update');
                Route::post('/change-status', 'changeStatus')->name('products.change-status');
                Route::post('/remove', 'remove')->name('products.remove');

                // Route::post('/updateimg', 'updateimg')->name('products.updateimg');


            });
        });

        Route::controller(DiscountPostsController::class)->group(function () {
            Route::group(['prefix' => '/posts'], function () {
                Route::get('/', 'index')->name('discount-posts.index');
                Route::get('/create', 'create')->name('discount-posts.create');
                Route::post('/', 'store')->name('discount-posts.store');
                Route::get('/{id}', 'show')->name('discount-posts.show');
                Route::get('/{id}/edit', 'edit')->name('discount-posts.edit');
                Route::post('/update', 'update')->name('discount-posts.update');
                Route::post('/change-status', 'changeStatus')->name('discount-posts.change-status');
                Route::post('/remove', 'remove')->name('discount-posts.remove');
            });
        });

        Route::controller(InfosController::class)->group(function () {
            Route::group(['prefix' => '/infos'], function () {
                Route::get('/', 'index')->name('infos.index');
                Route::get('/edit', 'edit')->name('infos.edit');
                Route::post('/update', 'update')->name('infos.update');
            });
        });

        Route::controller(ContacstsController::class)->group(function () {
            Route::group(['prefix' => '/contacsts'], function () {
                Route::get('/', 'index')->name('contacsts.index');
                Route::get('/edit', 'edit')->name('contacsts.edit');
                Route::post('/update', 'update')->name('contacsts.update');
            });
        });

        Route::controller(MappingController::class)->group(function () {
            Route::group(['prefix' => '/mapping'], function () {
                Route::post('/mapping-room-category', 'mappingRoomCategory')->name('mapping.mappingRoomCategory');
                Route::post('/mapping-category-product', 'mappingCategoryProduct')->name('mapping.mappingCategoryProduct');
                Route::post('/mapping-product-image', 'mappingProductImage')->name('mapping.mappingProductImage');

            });
        });

        Route::controller(SettingsController::class)->group(function () {
            Route::group(['prefix' => '/settings'], function () {
                Route::get('/', 'index')->name('settings.index');
                Route::post('/update', 'update')->name('settings.update');

                Route::controller(SlidersController::class)->group(function () {
                    Route::group(['prefix' => '/sliders'], function () {
                        Route::get('/', 'index')->name('sliders.index');
                        Route::get('/create', 'create')->name('sliders.create');
                        Route::post('/', 'store')->name('sliders.store');
                        Route::get('/{id}', 'show')->name('sliders.show');
                        Route::get('/{id}/edit', 'edit')->name('sliders.edit');
                        Route::post('/update', 'update')->name('sliders.update');
                        Route::post('/change-status', 'changeStatus')->name('sliders.change-status');
                        Route::post('/remove', 'remove')->name('sliders.remove');
                    });
                });

                Route::controller(BannersController::class)->group(function () {
                    Route::group(['prefix' => '/banners'], function () {
                        Route::get('/', 'index')->name('banners.index');
                        Route::get('/{id}/edit', 'edit')->name('banners.edit');
                        Route::post('/update', 'update')->name('banners.update');
                    });
                });
                Route::controller(ChangePassWordController::class)->group(function () {
                    Route::group(['prefix' => '/change-pass-word'], function () {
                        Route::get('', 'edit')->name('change-password.edit');
                        Route::post('/update', 'update')->name('change-password.update');
                    });
                });

            });
        });

    });
});

Route::group(['prefix' => ''], function () {
    Route::get('',[HomePageController::class ,'index'])->name('home');//
    Route::get('/lien-he',[ContactPageController::class ,'index'])->name('contact');//
    Route::get('/gioi-thieu',[AboutPageController::class ,'index'])->name('info');//
    Route::get('/bai-viet{keyword?}',[DiscountPageController::class ,'index'])->name('discount-post');//
    Route::get('/san-pham/{slug}',[DetailProductPageController::class ,'index'])->name('detail-product');
    Route::get('/danh-muc/{slug}',[CategoryPageController::class ,'index'])->name('category.index');//
    Route::get('/bai-viet/{slug}',[DiscountPageController::class ,'show'])->name('discount-post.show');//
    Route::get('/phong/{slug}{keyword?}',[RoomPageController::class ,'index'])->name('room.index');
    // Route::get('/phong/{slug}',[RoomPageController::class ,'index'])->name('room.index');
    Route::get('/get-data-product/{key}',[SearchProductController::class ,'index'])->name('product.search');

});


// List - index
// chi tiết - show
// cập nhật - update
// Xóa - destroy
// trang tạo - create
// tạo - store
