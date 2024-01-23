<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{$Setting["title_website"]}}</title>
    <meta property="og:locale" content="vi_vn" />
    <meta property="fb:app_id" content="{{$Setting["facebook_social_website"]}}" />

    @yield('SEO')

    {{-- <meta name="author" content="Frutin">
    <meta name="description" content="Frutin - Organic and Healthy Food HTML Template">
    <meta name="keywords" content="Frutin - Organic and Healthy Food HTML Template">
    <meta name="robots" content="INDEX,FOLLOW">
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no"> --}}


    {{-- Icon --}}
    {{-- <link rel="shortcut icon" type="image/x-icon" href="{{asset($Setting["icon_general_website"])}}"> --}}
    {{-- Titile --}}
    {{-- <h1 style="display:none">{{$Setting["title_website"]}}</h1>
    <h2 style="display:none">{{$Setting["description_seo_website"]}}</h2> --}}


    <link rel="apple-touch-icon" sizes="57x57" href="{{asset('user/img\favicons\apple-icon-57x57.png')}}">
    <link rel="apple-touch-icon" sizes="60x60" href="{{asset('user/img\favicons\apple-icon-60x60.png')}}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{asset('user/img\favicons\apple-icon-72x72.png')}}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{asset('user/img\favicons\apple-icon-76x76.png')}}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{asset('user/img\favicons\apple-icon-114x114.png')}}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{asset('user/img\favicons\apple-icon-120x120.png')}}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{asset('user/img\favicons\apple-icon-144x144.png')}}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{asset('user/img\favicons\apple-icon-152x152.png')}}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('user/img\favicons\apple-icon-180x180.png')}}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{asset('user/img\favicons\android-icon-192x192.png')}}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset('user/img\favicons\favicon-32x32.png')}}">
    <link rel="icon" type="image/png" sizes="96x96" href="{{asset('user/img\favicons\favicon-96x96.png')}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('user/img\favicons\favicon-16x16.png')}}">
    <link rel="manifest" href="{{asset('user/img\favicons\manifest.json')}}">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/img/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link
        href="https://fonts.googleapis.com/css2?family=DM+Sans:opsz,wght@9..40,100;9..40,200;9..40,300;9..40,400;9..40,500;9..40,600;9..40,700&family=Lexend:wght@300;400;500;600;700;800;900&family=Lobster&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="{{asset('user/css/app.min.css')}}">
    <link rel="stylesheet" href="{{asset('user/css/fontawesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('user/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('user/css/custom.css')}}">
    <link href="https://fonts.cdnfonts.com/css/utm-avo" rel="stylesheet">

    <style>
    body {
        font-family: 'UTM Avo', sans-serif;
    }

    .slider-area span {
        font-size: inherit;
        font-weight: inherit;
    }
    </style>
</head>

<body>
    {{-- <div class="preloader"><button class="th-btn preloaderCls">Cancel Preloader</button>
        <div class="preloader-inner">
            <div class="loader"><span></span> <span></span> <span></span> <span></span> <span></span> <span></span>
            </div>
        </div>
    </div> --}}
    <div id="QuickView" class="white-popup mfp-hide">
        <div class="container bg-white rounded-10">
            <div class="row gx-60">
                <div class="col-lg-6">
                    <div class="product-big-img">
                        <div class="img"><img src="{{asset('user\img\product\product_details_1_1.jpg')}}"
                                alt="Product Image">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
                    <div class="product-about">
                        <p class="price">$120.85<del>$150.99</del></p>
                        <h2 class="product-title">Bosco Apple Fruit</h2>
                        <div class="product-rating">
                            <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span
                                    style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on
                                    <span class="rating">1</span> customer rating</span></div><a
                                href="shop-details.html" class="woocommerce-review-link">(<span class="count">4</span>
                                customer reviews)</a>
                        </div>
                        <p class="text">Prepare to embark on a sensory journey with the Bosco Apple, a fruit that
                            transcends the ordinary and promises an unparalleled taste experience. These apples are
                            nothing short of nature’s masterpiece, celebrated for their distinctive blend of flavors and
                            their captivating visual allure.</p>
                        <div class="mt-2 link-inherit">
                            <p><strong class="text-title me-3">Availability:</strong> <span class="stock in-stock"><i
                                        class="far fa-check-square me-2 ms-1"></i>In Stock</span></p>
                        </div>
                        <div class="actions">
                            <div class="quantity"><input type="number" class="qty-input" step="1" min="1" max="100"
                                    name="quantity" value="1" title="Qty"> <button class="quantity-plus qty-btn"><i
                                        class="far fa-chevron-up"></i></button> <button
                                    class="quantity-minus qty-btn"><i class="far fa-chevron-down"></i></button></div>
                            <button class="th-btn">Add to Cart</button> <a href="wishlist.html" class="icon-btn"><i
                                    class="far fa-heart"></i></a>
                        </div>
                        <div class="product_meta"><span class="sku_wrapper">SKU: <span
                                    class="sku">Bosco-Apple-Fruit</span></span> <span class="posted_in">Category: <a
                                    href="shop.html">Fresh Fruits</a></span> <span>Tags: <a
                                    href="shop.html">Fruits</a><a href="shop.html">Organic</a></span></div>
                    </div>
                </div>
            </div><button title="Close (Esc)" type="button" class="mfp-close">×</button>
        </div>
    </div>
    <div class="sidemenu-wrapper sidemenu-cart d-none d-lg-block">
        <div class="sidemenu-content"><button class="closeButton sideMenuCls"><i class="far fa-times"></i></button>
            <div class="widget woocommerce widget_shopping_cart">
                <h3 class="widget_title">Shopping cart</h3>
                <div class="widget_shopping_cart_content">
                    <ul class="woocommerce-mini-cart cart_list product_list_widget">
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#"
                                class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img
                                    src="{{asset('user\img\product\product_thumb_1_1.jpg')}}" alt="Cart Image">Bosco
                                Apple
                                Fruit</a> <span class="quantity">1 × <span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">$</span>940.00</span></span></li>
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#"
                                class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img
                                    src="{{asset('user\img\product\product_thumb_1_2.jpg')}}" alt="Cart Image">Green
                                Cauliflower</a> <span class="quantity">1 × <span
                                    class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">$</span>899.00</span></span></li>
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#"
                                class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img
                                    src="{{asset('user\img\product\product_thumb_1_3.jpg')}}" alt="Cart Image">Mandarin
                                orange</a>
                            <span class="quantity">1 × <span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">$</span>756.00</span></span>
                        </li>
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#"
                                class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img
                                    src="{{asset('user\img\product\product_thumb_1_4.jpg')}}" alt="Cart Image">Shallot
                                Red
                                onion</a> <span class="quantity">1 × <span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">$</span>723.00</span></span></li>
                        <li class="woocommerce-mini-cart-item mini_cart_item"><a href="#"
                                class="remove remove_from_cart_button"><i class="far fa-times"></i></a> <a href="#"><img
                                    src="{{asset('user\img\product\product_thumb_1_5.jpg')}}" alt="Cart Image">Sour Red
                                Cherry</a>
                            <span class="quantity">1 × <span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">$</span>1080.00</span></span>
                        </li>
                    </ul>
                    <p class="woocommerce-mini-cart__total total"><strong>Subtotal:</strong> <span
                            class="woocommerce-Price-amount amount"><span
                                class="woocommerce-Price-currencySymbol">$</span>4398.00</span></p>
                    <p class="woocommerce-mini-cart__buttons buttons"><a href="cart.html" class="th-btn wc-forward">View
                            cart</a> <a href="checkout.html" class="th-btn checkout wc-forward">Checkout</a></p>
                </div>
            </div>
        </div>
    </div>
    <div class="popup-search-box d-none d-lg-block">

        {{-- <button class="searchClose"><i class="fal fa-times"></i></button>

        <form action="#"><input type="text" placeholder="What are you looking for?"> <button type="submit"><i
                    class="fal fa-search"></i></button>
        </form> --}}

        <div class="header_account_list search_list">
            <a href="javascript:void(0)"><i class="ion-ios-search-strong"></i></a>
            <div class=" dropdown_search" id="dropdown_search">
                <form class="form-search" id="form-submit">
                    <input class="input-search" autocomplete="off" id="input_search" placeholder="Nhập tên sản phẩm ..."
                        type="text">
                    {{-- <button disabled><i class="ion-ios-search-strong"></i></button> --}}
                    <div class="search-list">
                        <div id="list-product">
                            <div class="product-search">
                                <a>Không tìm thấy sản phẩm !</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </div>

    </div>
    <div class="th-menu-wrapper">
        <div class="th-menu-area text-center"><button class="th-menu-toggle"><i class="fal fa-times"></i></button>
            <div class="mobile-logo"><a href="/"><img src="{{asset($Setting["logo_general_website"])}}"
                        alt="Frutin"></a>
            </div>
            <div class="th-mobile-menu">
                <ul>
                    <li><a href="/">Trang chủ</a></li>
                    <li class="menu-item-has-children"><a href="#">Danh mục</a>
                        <ul class="sub-menu">
                            @foreach ($menuCategory as $key => $item )
                            <li><a
                                    href="{{route('category.index',$item['url_category'])}}">{{$item["name_category"]}}</a>
                            </li>
                            @endforeach
                        </ul>
                    </li>
                    <li><a href="{{route('discount-post')}}">Bài viết</a></li>
                    <li><a href="{{route('info')}}">Giới thiệu</a></li>
                    <li><a href="{{route('contact')}}">Liên hệ</a></li>
                </ul>
            </div>
        </div>
    </div>
    <header class="th-header header-layout1">
        <div class="header-top">
            <div class="container">
                <div class="row justify-content-center justify-content-lg-between align-items-center gy-2">
                    <div class="col-auto d-none d-lg-block">
                    </div>
                    <div class="col-auto">
                        <div class="header-links">
                            <ul>
                                <li class="d-none d-sm-inline-block"><i class="fal fa-location-dot"></i>
                                    <a target="_blank"
                                        href="https://maps.app.goo.gl/rMBAeNjajqxEsQ387">{{$Setting["address_website"]}}</a>
                                </li>
                                <li>
                                    <div class="social-links">
                                        <a target="_blank" href="{{$Setting["facebook_website"]}}">
                                            <img width="20" src="{{asset('user/img/icon/facebook-icon.png')}}" alt="">
                                        </a>
                                        <a target="_blank" href="{{$Setting["shoppe_website"]}}">
                                            <img width="20" src="{{asset('user/img/icon/icon_shopee_32.png')}}" alt="">
                                        </a>
                                        <a target="_blank" href="{{$Setting["zalo_website"]}}">
                                            <img width="20" src="{{asset('user/img/icon/zalo-icon-circle-1.png')}}"
                                                alt="">
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sticky-wrapper">
            <div class="menu-area">
                <div class="container">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-auto">
                            <div class="header-logo"><a href="/"><img width="100"
                                        src="{{asset($Setting["logo_general_website"])}}" alt="Logo"></a></div>
                        </div>
                        <div class="col-auto">
                            <nav class="main-menu d-none d-lg-inline-block">
                                <ul>
                                    <li><a href="/">Trang chủ</a></li>

                                    <li class="menu-item-has-children"><a href="#">Danh mục</a>
                                        <ul class="sub-menu">
                                            @foreach ($menuCategory as $key => $item )
                                            <li><a
                                                    href="{{route('category.index',$item['url_category'])}}">{{$item["name_category"]}}</a>
                                            </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="{{route('discount-post')}}">Bài viết</a></li>
                                    <li><a href="{{route('info')}}">Giới thiệu</a></li>
                                    <li><a href="{{route('contact')}}">Liên hệ</a></li>
                                </ul>
                            </nav><button type="button" class="th-menu-toggle d-block d-lg-none"><i
                                    class="far fa-bars"></i></button>
                        </div>
                        <div class="col-auto d-none d-xl-block">
                            <div class="header-button"><button type="button" class="simple-icon searchBoxToggler"><i
                                        class="far fa-search"></i></button>
                                <button type="button" class="simple-icon sideMenuToggler">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Body -->

    @yield('content')

    <!-- End Body -->


    <footer class="footer-wrapper footer-layout2">

        <div class="widget-area">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget footer-widget">
                            <div class="th-widget-about">
                                <div class="about-logo"><a href="/"><img width="100"
                                            src="{{asset($Setting["logo_general_website"])}}" alt="Frutin"></a></div>
                                <p class="about-text">{!! $Setting["description_seo_website"] !!}</p>
                                <div class="th-social">
                                    <a target="_blank" href="{{$Setting["facebook_website"]}}">
                                        <img width="25" src="{{asset('user/img/icon/facebook-icon.png')}}" alt="">
                                    </a>
                                    <a target="_blank" href="{{$Setting["shoppe_website"]}}">
                                        <img width="25" src="{{asset('user/img/icon/icon_shopee_32.png')}}" alt="">
                                    </a>
                                    <a target="_blank" href="{{$Setting["zalo_website"]}}">
                                        <img width="25" src="{{asset('user/img/icon/zalo-icon-circle-1.png')}}" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget widget_nav_menu footer-widget">
                            <h3 class="widget_title"><img src="{{asset('user\img\theme-img\title_icon.svg')}}"
                                    alt="Icon">Danh mục</h3>
                            <div class="menu-all-pages-container">

                                <ul class="menu">

                                    @foreach ($menuCategory as $key => $item)
                                    <li>
                                        <a class=" {{$key > 10 ? "hidden" : ""}}"
                                            href="{{route('category.index',$item['url_category'])}}">
                                            {{$item["name_category"]}}
                                        </a>
                                    </li>
                                    @endforeach

                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget widget_nav_menu footer-widget">
                            <h3 class="widget_title"><img src="{{asset('user\img\theme-img\title_icon.svg')}}"
                                    alt="Icon">Đường dẫn nhanh</h3>
                            <div class="menu-all-pages-container">
                                <ul class="menu">
                                    <li><a href="/">Trang Chủ</a></li>
                                    <li><a href="{{route('discount-post')}}">Bài viết</a></li>
                                    <li><a href="{{route('info')}}">Giới thiệu</a></li>
                                    <li><a href="{{route('contact')}}">Liên Hệ</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget footer-widget">
                            <h3 class="widget_title"><img src="{{asset('user\img\theme-img\title_icon.svg')}}"
                                    alt="Icon">Liên hệ</h3>
                            <div class="th-widget-contact">
                                <div class="info-box">
                                    <div class="info-box_icon"><i class="fas fa-location-dot"></i></div>
                                    <p class="info-box_text">{{$Setting["address_website"]}}</p>
                                </div>
                                <div class="info-box">
                                    <div class="info-box_icon"><i class="fas fa-phone"></i></div>
                                    <p class="info-box_text"><a href="tel:{{$Setting["phone_website"]}}"
                                            class="info-box_link">{{$Setting["phone_website"]}}</a>
                                    </p>
                                </div>
                                <div class="info-box">
                                    <div class="info-box_icon"><i class="fas fa-envelope"></i></div>
                                    <p class="info-box_text"><a href="mailto:{{$Setting["email_website"]}}"
                                            class="info-box_link">{{$Setting["email_website"]}}</a></p>
                                </div>
                                <!-- <div class="info-box">
                                    <div class="info-box_icon"><i class="fas fa-phone"></i></div>
                                    <p class="info-box_text"><a href="{{$Setting["shoppe_website"]}}" target="_blank"
                                            class="info-box_link">{{$Setting["shoppe_website"]}}</a>
                                    </p>
                                </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- <div class="copyright-wrap" data-bg-src="{{asset('user/img/bg/copyright_bg_1.png')}}">
        <div class="container">
            <div class="row gy-2 align-items-center">
                <div class="col-md-6">
                    <p class="copyright-text">Copyright <i class="fal fa-copyright"></i> 2024 <a
                            href="home-organic-farm.html">Việt Long Trà</a>. All Rights Reserved.</p>
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <div class="payment-img"><img src="{{asset('user\img\normal\payment_methods.png')}}" alt="Image">
                    </div>
                </div>
            </div>
        </div>
        </div> --}}
    </footer>
    <div class="scroll-top"><svg class="progress-circle svg-content" width="100%" height="100%" viewbox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"
                style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;">
            </path>
        </svg></div>
    <script src="{{asset('user\js\vendor\jquery-3.6.0.min.js')}}"></script>
    <script src="{{asset('user\js\app.min.js')}}"></script>
    <script src="{{asset('user\js\main.js')}}"></script>
    <script src="{{asset('user/common.js')}}"></script>

</body>

</html>