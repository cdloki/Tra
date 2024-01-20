<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer(
            '*', // view name - all views
            'App\Http\ViewCompoers\MenuCompoers' // composer class name
        );
        view()->composer(
            '*', // view name - all views
            'App\Http\ViewCompoers\SettingCompoers' // composer class name
        );
    }
}
