<!doctype html>
<html class="no-js" lang="vi">

<head>
      <meta charset="utf-8">
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <meta name="csrf-token" content="{{ csrf_token() }}">

      <!-- <title>{{$Setting["title_website"]}}</title>
    <meta name="description" content="{{$Setting["description_seo_website"]}}"> -->

      <meta name="author" content="Việt Long Trà">
      <meta property="og:locale" content="vi_vn" />
      <meta property="fb:app_id" content="" />
      <meta name="robots" content="INDEX,FOLLOW">
      <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
      <meta name="google-site-verification" content="{{$Setting["google_site_verification"]}}" />

      <!-- Google tag (gtag.js) -->
      <script async src="https://www.googletagmanager.com/gtag/js?id={{$Setting["googleanaly_social_website"]}}">
      </script>
      <script>
      window.dataLayer = window.dataLayer || [];

      function gtag() {
            dataLayer.push(arguments);
      }
      gtag('js', new Date());

      gtag('config', '{{$Setting["googleanaly_social_website"]}}');
      </script>

      @yield('SEO')

      <link rel="apple-touch-icon" sizes="57x57" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="apple-touch-icon" sizes="60x60" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="apple-touch-icon" sizes="76x76" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="apple-touch-icon" sizes="72x72" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="apple-touch-icon" sizes="114x114" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="apple-touch-icon" sizes="120x120" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="apple-touch-icon" sizes="144x144" href="{{asset($Setting["icon_general_website"])}}">

      <link rel="icon" type="image/png" sizes="192x192" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="icon" type="image/png" sizes="32x32" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="icon" type="image/png" sizes="96x96" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="icon" type="image/png" sizes="16x16" href="{{asset($Setting["icon_general_website"])}}">
      <link rel="manifest" href="{{asset('user/img\favicons\manifest.json')}}">
      <meta name="msapplication-TileColor" content="#ffffff">
      <meta name="msapplication-TileImage" content="assets/img/favicon.png">
      <meta name="theme-color" content="#ffffff">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
      <link href="https://fonts.googleapis.com/css2?family=DM+Sans:opsz,wght@9..40,100;9..40,200;9..40,300;9..40,400;9..40,500;9..40,600;9..40,700&family=Lexend:wght@300;400;500;600;700;800;900&family=Lobster&display=swap"
            rel="stylesheet">
      <link rel="stylesheet" href="{{asset('user/css/app.min.css')}}">
      <link rel="stylesheet" href="{{asset('user/css/fontawesome.min.css')}}">
      <link rel="stylesheet" href="{{asset('user/css/style.css')}}">
      <link rel="stylesheet" href="{{asset('user/css/custom.css?version=26-01-2024 9:52CH')}}">
      <link href="https://fonts.cdnfonts.com/css/utm-avo" rel="stylesheet">

      <style>
      body {
            font-family: 'UTM Avo', sans-serif;
      }

      .slider-area span {
            font-size: inherit;
            font-weight: inherit;
      }

      .product-about>.price {
            font-size: 25px;
            color: #dc3545;
      }

      .th-product .price {
            color: #dc3545;
      }
      </style>
</head>

<body>

      <div class="popup-search-box d-none d-lg-block">

            <div class="header_account_list search_list">
                  <a href="javascript:void(0)"><i class="ion-ios-search-strong"></i></a>
                  <div class=" dropdown_search" id="dropdown_search">
                        <form class="form-search" id="form-submit">
                              <input class="input-search" autocomplete="off" id="input_search"
                                    placeholder="Nhập tên sản phẩm ..." type="text">
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
                              <li class="menu-item-has-children"><a href="#">Sản phẩm</a>
                                    <ul class="sub-menu">
                                          @foreach ($menuCategory as $key => $item )
                                          <li><a href="{{route('category.index',$item['url_category'])}}">{{$item["name_category"]}}</a>
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
                  <div class="container-fluid">
                        <div class="row justify-content-center justify-content-lg-between align-items-center gy-2">
                              <div class="col-auto d-none d-lg-block">
                              </div>
                              <div class="col-auto">
                                    <div class="header-links">
                                          <ul class="d-flex align-items-center">
                                                <li class="d-none d-sm-inline-block"><i class="fal fa-location-dot"></i>
                                                      <a target="_blank"
                                                            href="https://maps.app.goo.gl/2U68k62bXbjkujfD8">{{$Setting["address_website"]}}</a>
                                                </li>
                                                <li class="d-block d-lg-none">
                                                      <div>
                                                            <nav class="main-menu d-none d-lg-inline-block">
                                                                  <ul>
                                                                        <li><a href="/">Trang chủ</a></li>

                                                                        <li class="menu-item-has-children">
                                                                              <a href="#">Sản phẩm</a>
                                                                              <ul class="sub-menu">
                                                                                    @foreach ($menuCategory as $key =>
                                                                                    $item )
                                                                                    <li><a href="{{route('category.index',$item['url_category'])}}">{{$item["name_category"]}}</a>
                                                                                    </li>
                                                                                    @endforeach
                                                                              </ul>
                                                                        </li>
                                                                        <li><a href="{{route('discount-post')}}">Bài
                                                                                    viết</a></li>
                                                                        <li><a href="{{route('info')}}">Giới thiệu</a>
                                                                        </li>
                                                                        <li><a href="{{route('contact')}}">Liên hệ</a>
                                                                        </li>
                                                                  </ul>
                                                            </nav>
                                                            <button style="height: 20px;" type="button"
                                                                  class="th-menu-toggle d-block d-lg-none"><i
                                                                        class="far fa-bars"></i>
                                                            </button>
                                                      </div>
                                                </li>
                                                <li>
                                                      <div class="social-links">
                                                            <a target="_blank" href="{{$Setting["facebook_website"]}}">
                                                                  <img width="20"
                                                                        src="{{asset('user/img/icon/facebook-icon.png')}}"
                                                                        alt="">
                                                            </a>
                                                            <a target="_blank" href="{{$Setting["shoppe_website"]}}">
                                                                  <img width="20"
                                                                        src="{{asset('user/img/icon/icon_shopee_32.png')}}"
                                                                        alt="">
                                                            </a>
                                                            <a target="_blank" href="{{$Setting["zalo_website"]}}">
                                                                  <img width="20"
                                                                        src="{{asset('user/img/icon/zalo-icon-circle-1.png')}}"
                                                                        alt="">
                                                            </a>
                                                      </div>
                                                </li>
                                                <li class="d-lg-none">
                                                      <div><a href="/"><img id="logo_img" width="80"
                                                                        src="{{asset($Setting["logo_general_website"])}}"
                                                                        alt="Logo"></a></div>
                                                </li>
                                          </ul>
                                    </div>
                              </div>
                        </div>
                  </div>
            </div>
            <div class="sticky-wrapper d-none d-lg-block">
                  <div class="menu-area">
                        <div class="container">
                              <div class="row align-items-center justify-content-between">
                                    <div class="d-none d-lg-block order-2 order-lg-1 col-auto">
                                          <div class="header-logo">
                                                <a href="/">
                                                      <img id="logo_img" width="100"
                                                            src="{{asset($Setting["logo_general_website"])}}"
                                                            alt="Logo">
                                                </a>
                                          </div>
                                    </div>
                                    <div class="d-none d-lg-block order-2 order-lg-1 col-auto">
                                          <nav class="main-menu d-none d-lg-inline-block">
                                                <ul>
                                                      <li><a href="/">Trang chủ</a></li>
                                                      <li class="menu-item-has-children">
                                                            <a href="#">Sản phẩm</a>
                                                            <ul class="sub-menu">
                                                                  @foreach ($menuCategory as $key => $item )
                                                                  <li><a href="{{route('category.index',$item['url_category'])}}">{{$item["name_category"]}}</a>
                                                                  </li>
                                                                  @endforeach
                                                            </ul>
                                                      </li>
                                                      <li><a href="{{route('discount-post')}}">Bài viết</a></li>
                                                      <li><a href="{{route('info')}}">Giới thiệu</a></li>
                                                      <li><a href="{{route('contact')}}">Liên hệ</a></li>
                                                </ul>
                                          </nav>
                                          <button type="button" class="th-menu-toggle d-block d-lg-none"><i
                                                      class="far fa-bars"></i>
                                          </button>
                                    </div>
                                    <!-- <div class="col-auto flex-fill mt-2 d-flex d-lg-none">
                            <a target="_blank" href="https://maps.app.goo.gl/2U68k62bXbjkujfD8"><img src="{{asset('user/img/map.jpg')}}" width="100%"></a>
                        </div> -->
                                    <div class="order-3 col-auto d-none d-xl-block">
                                          <div class="header-button">
                                                <button type="button" class="simple-icon searchBoxToggler">
                                                      <i class="far fa-search"></i>
                                                </button>
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
                                                                  src="{{asset($Setting["logo_general_website"])}}"
                                                                  alt="Frutin"></a></div>
                                                <p class="about-text">{!! $Setting["description_seo_website"] !!}</p>
                                                <div class="th-social">
                                                      <a target="_blank" href="{{$Setting["facebook_website"]}}">
                                                            <img width="25"
                                                                  src="{{asset('user/img/icon/facebook-icon.png')}}"
                                                                  alt="">
                                                      </a>
                                                      <a target="_blank" href="{{$Setting["shoppe_website"]}}">
                                                            <img width="25"
                                                                  src="{{asset('user/img/icon/icon_shopee_32.png')}}"
                                                                  alt="">
                                                      </a>
                                                      <a target="_blank" href="{{$Setting["zalo_website"]}}">
                                                            <img width="25"
                                                                  src="{{asset('user/img/icon/zalo-icon-circle-1.png')}}"
                                                                  alt="">
                                                      </a>
                                                </div>
                                          </div>
                                    </div>
                              </div>
                              <div class="col-md-6 col-xl-auto">
                                    <div class="widget widget_nav_menu footer-widget">
                                          <h3 class="widget_title"><img
                                                      src="{{asset('user\img\theme-img\title_icon.svg')}}"
                                                      alt="Icon">Sản phẩm</h3>
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
                                          <h3 class="widget_title"><img
                                                      src="{{asset('user\img\theme-img\title_icon.svg')}}"
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
                                          <h3 class="widget_title"><img
                                                      src="{{asset('user\img\theme-img\title_icon.svg')}}"
                                                      alt="Icon">Liên hệ</h3>
                                          <div class="th-widget-contact">
                                                <div class="info-box">
                                                      <div class="info-box_icon"><i class="fas fa-location-dot"></i>
                                                      </div>
                                                      <p class="info-box_text">{{$Setting["address_website"]}}</p>
                                                </div>
                                                <div class="info-box">
                                                      <div class="info-box_icon"><i class="fas fa-phone"></i></div>
                                                      <p class="info-box_text"><a
                                                                  href="tel:{{$Setting["phone_website"]}}"
                                                                  class="info-box_link">{{$Setting["phone_website"]}}</a>
                                                      </p>
                                                </div>
                                                <div class="info-box">
                                                      <div class="info-box_icon"><i class="fas fa-envelope"></i></div>
                                                      <p class="info-box_text"><a
                                                                  href="mailto:{{$Setting["email_website"]}}"
                                                                  class="info-box_link">{{$Setting["email_website"]}}</a>
                                                      </p>
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
                              <div class="payment-img"><img src="{{asset('user\img\normal\payment_methods.png')}}"
                                          alt="Image">
                              </div>
                        </div>
                  </div>
            </div>
            </div> --}}
      </footer>
      <div class="scroll-top"><svg class="progress-circle svg-content" width="100%" height="100%"
                  viewbox="-1 -1 102 102">
                  <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"
                        style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;">
                  </path>
            </svg></div>
      <script src="{{asset('user\js\vendor\jquery-3.6.0.min.js')}}"></script>
      <script type="text/javascript" src="{{ asset('js/laroute.js') }}"></script>

      <script src="{{asset('user\js\app.min.js')}}"></script>
      <script src="{{asset('user\js\main.js')}}"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

      <script src="{{asset('user\js\common.js')}}"></script>

</body>

</html>