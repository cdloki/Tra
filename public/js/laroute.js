(function () {

    var laroute = (function () {

        var routes = {

            absolute: false,
            rootUrl: 'http://127.0.0.1:8000',
            routes : [{"host":null,"methods":["GET","HEAD"],"uri":"filemanager","name":"unisharp.lfm.show","action":"UniSharp\LaravelFilemanager\Controllers\LfmController@show"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/errors","name":"unisharp.lfm.getErrors","action":"UniSharp\LaravelFilemanager\Controllers\LfmController@getErrors"},{"host":null,"methods":["GET","HEAD","POST","PUT","PATCH","DELETE","OPTIONS"],"uri":"filemanager\/upload","name":"unisharp.lfm.upload","action":"UniSharp\LaravelFilemanager\Controllers\UploadController@upload"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/jsonitems","name":"unisharp.lfm.getItems","action":"UniSharp\LaravelFilemanager\Controllers\ItemsController@getItems"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/move","name":"unisharp.lfm.move","action":"UniSharp\LaravelFilemanager\Controllers\ItemsController@move"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/domove","name":"unisharp.lfm.domove","action":"UniSharp\LaravelFilemanager\Controllers\ItemsController@domove"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/newfolder","name":"unisharp.lfm.getAddfolder","action":"UniSharp\LaravelFilemanager\Controllers\FolderController@getAddfolder"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/folders","name":"unisharp.lfm.getFolders","action":"UniSharp\LaravelFilemanager\Controllers\FolderController@getFolders"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/crop","name":"unisharp.lfm.getCrop","action":"UniSharp\LaravelFilemanager\Controllers\CropController@getCrop"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/cropimage","name":"unisharp.lfm.getCropimage","action":"UniSharp\LaravelFilemanager\Controllers\CropController@getCropimage"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/cropnewimage","name":"unisharp.lfm.getCropnewimage","action":"UniSharp\LaravelFilemanager\Controllers\CropController@getNewCropimage"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/rename","name":"unisharp.lfm.getRename","action":"UniSharp\LaravelFilemanager\Controllers\RenameController@getRename"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/resize","name":"unisharp.lfm.getResize","action":"UniSharp\LaravelFilemanager\Controllers\ResizeController@getResize"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/doresize","name":"unisharp.lfm.performResize","action":"UniSharp\LaravelFilemanager\Controllers\ResizeController@performResize"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/download","name":"unisharp.lfm.getDownload","action":"UniSharp\LaravelFilemanager\Controllers\DownloadController@getDownload"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/delete","name":"unisharp.lfm.getDelete","action":"UniSharp\LaravelFilemanager\Controllers\DeleteController@getDelete"},{"host":null,"methods":["GET","HEAD"],"uri":"filemanager\/demo","name":"unisharp.lfm.","action":"UniSharp\LaravelFilemanager\Controllers\DemoController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"linkstorage","name":null,"action":"Closure"},{"host":null,"methods":["GET","HEAD"],"uri":"laroute-generate","name":null,"action":"Closure"},{"host":null,"methods":["GET","HEAD"],"uri":"admins","name":"pages-login","action":"App\Http\Controllers\AdminController\AdminController@login"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/login","name":"pages-login","action":"App\Http\Controllers\AdminController\AdminController@login"},{"host":null,"methods":["POST"],"uri":"admins\/check-login","name":"check-login","action":"App\Http\Controllers\AdminController\AdminController@checkLogin"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager","name":"unisharp.lfm.show","action":"UniSharp\LaravelFilemanager\Controllers\LfmController@show"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/errors","name":"unisharp.lfm.getErrors","action":"UniSharp\LaravelFilemanager\Controllers\LfmController@getErrors"},{"host":null,"methods":["GET","HEAD","POST","PUT","PATCH","DELETE","OPTIONS"],"uri":"laravel-filemanager\/upload","name":"unisharp.lfm.upload","action":"UniSharp\LaravelFilemanager\Controllers\UploadController@upload"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/jsonitems","name":"unisharp.lfm.getItems","action":"UniSharp\LaravelFilemanager\Controllers\ItemsController@getItems"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/move","name":"unisharp.lfm.move","action":"UniSharp\LaravelFilemanager\Controllers\ItemsController@move"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/domove","name":"unisharp.lfm.domove","action":"UniSharp\LaravelFilemanager\Controllers\ItemsController@domove"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/newfolder","name":"unisharp.lfm.getAddfolder","action":"UniSharp\LaravelFilemanager\Controllers\FolderController@getAddfolder"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/folders","name":"unisharp.lfm.getFolders","action":"UniSharp\LaravelFilemanager\Controllers\FolderController@getFolders"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/crop","name":"unisharp.lfm.getCrop","action":"UniSharp\LaravelFilemanager\Controllers\CropController@getCrop"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/cropimage","name":"unisharp.lfm.getCropimage","action":"UniSharp\LaravelFilemanager\Controllers\CropController@getCropimage"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/cropnewimage","name":"unisharp.lfm.getCropnewimage","action":"UniSharp\LaravelFilemanager\Controllers\CropController@getNewCropimage"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/rename","name":"unisharp.lfm.getRename","action":"UniSharp\LaravelFilemanager\Controllers\RenameController@getRename"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/resize","name":"unisharp.lfm.getResize","action":"UniSharp\LaravelFilemanager\Controllers\ResizeController@getResize"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/doresize","name":"unisharp.lfm.performResize","action":"UniSharp\LaravelFilemanager\Controllers\ResizeController@performResize"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/download","name":"unisharp.lfm.getDownload","action":"UniSharp\LaravelFilemanager\Controllers\DownloadController@getDownload"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/delete","name":"unisharp.lfm.getDelete","action":"UniSharp\LaravelFilemanager\Controllers\DeleteController@getDelete"},{"host":null,"methods":["GET","HEAD"],"uri":"laravel-filemanager\/demo","name":"unisharp.lfm.","action":"UniSharp\LaravelFilemanager\Controllers\DemoController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/login-out","name":"login-out","action":"App\Http\Controllers\AdminController\AdminController@loginOut"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/dashboard","name":"index","action":"App\Http\Controllers\AdminController\AdminController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/creat-site-map","name":"creat-site-map","action":"App\Http\Controllers\AdminController\SiteMapController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/rooms","name":"rooms.index","action":"App\Http\Controllers\AdminController\RoomsController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/rooms\/create","name":"rooms.create","action":"App\Http\Controllers\AdminController\RoomsController@create"},{"host":null,"methods":["POST"],"uri":"admins\/rooms","name":"rooms.store","action":"App\Http\Controllers\AdminController\RoomsController@store"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/rooms\/{id}","name":"rooms.show","action":"App\Http\Controllers\AdminController\RoomsController@show"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/rooms\/{id}\/edit","name":"rooms.edit","action":"App\Http\Controllers\AdminController\RoomsController@edit"},{"host":null,"methods":["POST"],"uri":"admins\/rooms\/update","name":"rooms.update","action":"App\Http\Controllers\AdminController\RoomsController@update"},{"host":null,"methods":["POST"],"uri":"admins\/rooms\/change-status","name":"rooms.change-status","action":"App\Http\Controllers\AdminController\RoomsController@changeStatus"},{"host":null,"methods":["POST"],"uri":"admins\/rooms\/remove","name":"rooms.remove","action":"App\Http\Controllers\AdminController\RoomsController@remove"},{"host":null,"methods":["POST"],"uri":"admins\/rooms\/get-value","name":"rooms.getValue","action":"App\Http\Controllers\AdminController\RoomsController@getValue"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/categorys","name":"categorys.index","action":"App\Http\Controllers\AdminController\CategorysController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/categorys\/create","name":"categorys.create","action":"App\Http\Controllers\AdminController\CategorysController@create"},{"host":null,"methods":["POST"],"uri":"admins\/categorys","name":"categorys.store","action":"App\Http\Controllers\AdminController\CategorysController@store"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/categorys\/{id}","name":"categorys.show","action":"App\Http\Controllers\AdminController\CategorysController@show"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/categorys\/{id}\/edit","name":"categorys.edit","action":"App\Http\Controllers\AdminController\CategorysController@edit"},{"host":null,"methods":["POST"],"uri":"admins\/categorys\/update","name":"categorys.update","action":"App\Http\Controllers\AdminController\CategorysController@update"},{"host":null,"methods":["POST"],"uri":"admins\/categorys\/change-status","name":"categorys.change-status","action":"App\Http\Controllers\AdminController\CategorysController@changeStatus"},{"host":null,"methods":["POST"],"uri":"admins\/categorys\/remove","name":"categorys.remove","action":"App\Http\Controllers\AdminController\CategorysController@remove"},{"host":null,"methods":["POST"],"uri":"admins\/categorys\/get-value","name":"categorys.getValue","action":"App\Http\Controllers\AdminController\CategorysController@getValue"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/products","name":"products.index","action":"App\Http\Controllers\AdminController\ProductsController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/products\/create","name":"products.create","action":"App\Http\Controllers\AdminController\ProductsController@create"},{"host":null,"methods":["POST"],"uri":"admins\/products","name":"products.store","action":"App\Http\Controllers\AdminController\ProductsController@store"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/products\/{id}","name":"products.show","action":"App\Http\Controllers\AdminController\ProductsController@show"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/products\/{id}\/edit","name":"products.edit","action":"App\Http\Controllers\AdminController\ProductsController@edit"},{"host":null,"methods":["POST"],"uri":"admins\/products\/update","name":"products.update","action":"App\Http\Controllers\AdminController\ProductsController@update"},{"host":null,"methods":["POST"],"uri":"admins\/products\/change-status","name":"products.change-status","action":"App\Http\Controllers\AdminController\ProductsController@changeStatus"},{"host":null,"methods":["POST"],"uri":"admins\/products\/remove","name":"products.remove","action":"App\Http\Controllers\AdminController\ProductsController@remove"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/posts","name":"discount-posts.index","action":"App\Http\Controllers\AdminController\DiscountPostsController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/posts\/create","name":"discount-posts.create","action":"App\Http\Controllers\AdminController\DiscountPostsController@create"},{"host":null,"methods":["POST"],"uri":"admins\/posts","name":"discount-posts.store","action":"App\Http\Controllers\AdminController\DiscountPostsController@store"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/posts\/{id}","name":"discount-posts.show","action":"App\Http\Controllers\AdminController\DiscountPostsController@show"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/posts\/{id}\/edit","name":"discount-posts.edit","action":"App\Http\Controllers\AdminController\DiscountPostsController@edit"},{"host":null,"methods":["POST"],"uri":"admins\/posts\/update","name":"discount-posts.update","action":"App\Http\Controllers\AdminController\DiscountPostsController@update"},{"host":null,"methods":["POST"],"uri":"admins\/posts\/change-status","name":"discount-posts.change-status","action":"App\Http\Controllers\AdminController\DiscountPostsController@changeStatus"},{"host":null,"methods":["POST"],"uri":"admins\/posts\/remove","name":"discount-posts.remove","action":"App\Http\Controllers\AdminController\DiscountPostsController@remove"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/infos","name":"infos.index","action":"App\Http\Controllers\AdminController\InfosController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/infos\/edit","name":"infos.edit","action":"App\Http\Controllers\AdminController\InfosController@edit"},{"host":null,"methods":["POST"],"uri":"admins\/infos\/update","name":"infos.update","action":"App\Http\Controllers\AdminController\InfosController@update"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/contacsts","name":"contacsts.index","action":"App\Http\Controllers\AdminController\ContacstsController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/contacsts\/edit","name":"contacsts.edit","action":"App\Http\Controllers\AdminController\ContacstsController@edit"},{"host":null,"methods":["POST"],"uri":"admins\/contacsts\/update","name":"contacsts.update","action":"App\Http\Controllers\AdminController\ContacstsController@update"},{"host":null,"methods":["POST"],"uri":"admins\/mapping\/mapping-room-category","name":"mapping.mappingRoomCategory","action":"App\Http\Controllers\AdminController\MappingController@mappingRoomCategory"},{"host":null,"methods":["POST"],"uri":"admins\/mapping\/mapping-category-product","name":"mapping.mappingCategoryProduct","action":"App\Http\Controllers\AdminController\MappingController@mappingCategoryProduct"},{"host":null,"methods":["POST"],"uri":"admins\/mapping\/mapping-product-image","name":"mapping.mappingProductImage","action":"App\Http\Controllers\AdminController\MappingController@mappingProductImage"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/settings","name":"settings.index","action":"App\Http\Controllers\AdminController\SettingsController@index"},{"host":null,"methods":["POST"],"uri":"admins\/settings\/update","name":"settings.update","action":"App\Http\Controllers\AdminController\SettingsController@update"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/settings\/sliders","name":"sliders.index","action":"App\Http\Controllers\AdminController\SlidersController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/settings\/sliders\/create","name":"sliders.create","action":"App\Http\Controllers\AdminController\SlidersController@create"},{"host":null,"methods":["POST"],"uri":"admins\/settings\/sliders","name":"sliders.store","action":"App\Http\Controllers\AdminController\SlidersController@store"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/settings\/sliders\/{id}","name":"sliders.show","action":"App\Http\Controllers\AdminController\SlidersController@show"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/settings\/sliders\/{id}\/edit","name":"sliders.edit","action":"App\Http\Controllers\AdminController\SlidersController@edit"},{"host":null,"methods":["POST"],"uri":"admins\/settings\/sliders\/update","name":"sliders.update","action":"App\Http\Controllers\AdminController\SlidersController@update"},{"host":null,"methods":["POST"],"uri":"admins\/settings\/sliders\/change-status","name":"sliders.change-status","action":"App\Http\Controllers\AdminController\SlidersController@changeStatus"},{"host":null,"methods":["POST"],"uri":"admins\/settings\/sliders\/remove","name":"sliders.remove","action":"App\Http\Controllers\AdminController\SlidersController@remove"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/settings\/banners","name":"banners.index","action":"App\Http\Controllers\AdminController\BannersController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/settings\/banners\/{id}\/edit","name":"banners.edit","action":"App\Http\Controllers\AdminController\BannersController@edit"},{"host":null,"methods":["POST"],"uri":"admins\/settings\/banners\/update","name":"banners.update","action":"App\Http\Controllers\AdminController\BannersController@update"},{"host":null,"methods":["GET","HEAD"],"uri":"admins\/settings\/change-pass-word","name":"change-password.edit","action":"App\Http\Controllers\AdminController\ChangePassWordController@edit"},{"host":null,"methods":["POST"],"uri":"admins\/settings\/change-pass-word\/update","name":"change-password.update","action":"App\Http\Controllers\AdminController\ChangePassWordController@update"},{"host":null,"methods":["GET","HEAD"],"uri":"\/","name":"home","action":"App\Http\Controllers\UserController\HomePageController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"lien-he","name":"contact","action":"App\Http\Controllers\UserController\ContactPageController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"gioi-thieu","name":"info","action":"App\Http\Controllers\UserController\AboutPageController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"bai-viet{keyword?}","name":"discount-post","action":"App\Http\Controllers\UserController\DiscountPageController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"san-pham\/{slug}","name":"detail-product","action":"App\Http\Controllers\UserController\DetailProductPageController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"danh-muc\/{slug}","name":"category.index","action":"App\Http\Controllers\UserController\CategoryPageController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"bai-viet\/{slug}","name":"discount-post.show","action":"App\Http\Controllers\UserController\DiscountPageController@show"},{"host":null,"methods":["GET","HEAD"],"uri":"phong\/{slug}{keyword?}","name":"room.index","action":"App\Http\Controllers\UserController\RoomPageController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"get-data-product\/{key}","name":"product.search","action":"App\Http\Controllers\UserController\SearchProductController@index"},{"host":null,"methods":["GET","HEAD"],"uri":"api\/user","name":null,"action":"Closure"}],
            prefix: '',

            route : function (name, parameters, route) {
                route = route || this.getByName(name);

                if ( ! route ) {
                    return undefined;
                }

                return this.toRoute(route, parameters);
            },

            url: function (url, parameters) {
                parameters = parameters || [];

                var uri = url + '/' + parameters.join('/');

                return this.getCorrectUrl(uri);
            },

            toRoute : function (route, parameters) {
                var uri = this.replaceNamedParameters(route.uri, parameters);
                var qs  = this.getRouteQueryString(parameters);

                if (this.absolute && this.isOtherHost(route)){
                    return "//" + route.host + "/" + uri + qs;
                }

                return this.getCorrectUrl(uri + qs);
            },

            isOtherHost: function (route){
                return route.host && route.host != window.location.hostname;
            },

            replaceNamedParameters : function (uri, parameters) {
                uri = uri.replace(/\{(.*?)\??\}/g, function(match, key) {
                    if (parameters.hasOwnProperty(key)) {
                        var value = parameters[key];
                        delete parameters[key];
                        return value;
                    } else {
                        return match;
                    }
                });

                // Strip out any optional parameters that were not given
                uri = uri.replace(/\/\{.*?\?\}/g, '');

                return uri;
            },

            getRouteQueryString : function (parameters) {
                var qs = [];
                for (var key in parameters) {
                    if (parameters.hasOwnProperty(key)) {
                        qs.push(key + '=' + parameters[key]);
                    }
                }

                if (qs.length < 1) {
                    return '';
                }

                return '?' + qs.join('&');
            },

            getByName : function (name) {
                for (var key in this.routes) {
                    if (this.routes.hasOwnProperty(key) && this.routes[key].name === name) {
                        return this.routes[key];
                    }
                }
            },

            getByAction : function(action) {
                for (var key in this.routes) {
                    if (this.routes.hasOwnProperty(key) && this.routes[key].action === action) {
                        return this.routes[key];
                    }
                }
            },

            getCorrectUrl: function (uri) {
                var url = this.prefix + '/' + uri.replace(/^\/?/, '');

                if ( ! this.absolute) {
                    return url;
                }

                return this.rootUrl.replace('/\/?$/', '') + url;
            }
        };

        var getLinkAttributes = function(attributes) {
            if ( ! attributes) {
                return '';
            }

            var attrs = [];
            for (var key in attributes) {
                if (attributes.hasOwnProperty(key)) {
                    attrs.push(key + '="' + attributes[key] + '"');
                }
            }

            return attrs.join(' ');
        };

        var getHtmlLink = function (url, title, attributes) {
            title      = title || url;
            attributes = getLinkAttributes(attributes);

            return '<a href="' + url + '" ' + attributes + '>' + title + '</a>';
        };

        return {
            // Generate a url for a given controller action.
            // laroute.action('HomeController@getIndex', [params = {}])
            action : function (name, parameters) {
                parameters = parameters || {};

                return routes.route(name, parameters, routes.getByAction(name));
            },

            // Generate a url for a given named route.
            // laroute.route('routeName', [params = {}])
            route : function (route, parameters) {
                parameters = parameters || {};

                return routes.route(route, parameters);
            },

            // Generate a fully qualified URL to the given path.
            // laroute.route('url', [params = {}])
            url : function (route, parameters) {
                parameters = parameters || {};

                return routes.url(route, parameters);
            },

            // Generate a html link to the given url.
            // laroute.link_to('foo/bar', [title = url], [attributes = {}])
            link_to : function (url, title, attributes) {
                url = this.url(url);

                return getHtmlLink(url, title, attributes);
            },

            // Generate a html link to the given route.
            // laroute.link_to_route('route.name', [title=url], [parameters = {}], [attributes = {}])
            link_to_route : function (route, title, parameters, attributes) {
                var url = this.route(route, parameters);

                return getHtmlLink(url, title, attributes);
            },

            // Generate a html link to the given controller action.
            // laroute.link_to_action('HomeController@getIndex', [title=url], [parameters = {}], [attributes = {}])
            link_to_action : function(action, title, parameters, attributes) {
                var url = this.action(action, parameters);

                return getHtmlLink(url, title, attributes);
            }

        };

    }).call(this);

    /**
     * Expose the class either via AMD, CommonJS or the global object
     */
    if (typeof define === 'function' && define.amd) {
        define(function () {
            return laroute;
        });
    }
    else if (typeof module === 'object' && module.exports){
        module.exports = laroute;
    }
    else {
        window.laroute = laroute;
    }

}).call(this);

