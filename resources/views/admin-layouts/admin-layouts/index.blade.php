<!DOCTYPE html>
<html lang="en">

<head>

      <meta charset="utf-8" />
      <title>{{$Setting["title_website"]}} - Admin</title>
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
      <meta content="" name="author" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="csrf-token" content="{{ csrf_token() }}">
      <!-- App favicon -->
      <link rel="shortcut icon" href="{{asset($Setting["icon_general_website"])}}">
      <!-- App css -->
      <link href="{{asset('admin/plugins/datatables/datatable.css')}}" rel="stylesheet" type="text/css" />
      <link href="{{asset('admin/plugins/select/selectr.min.css')}}" rel="stylesheet" type="text/css" />
      <link href="{{asset('admin/plugins/uppy/uppy.min.css')}}" rel="stylesheet" type="text/css" />

      <!-- Sweet Alert -->
      <link href="{{asset('admin/plugins/sweet-alert2/sweetalert2.min.css')}}" rel="stylesheet" type="text/css">
      <link href="{{asset('admin/plugins/animate/animate.min.css')}}" rel="stylesheet" type="text/css">

      <link href="{{asset('admin/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
      <link href="{{asset('admin/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
      <link href="{{asset('admin/css/app.min.css')}}" rel="stylesheet" type="text/css" />
      <link href="{{asset('admin/css/custom.css')}}" rel="stylesheet" type="text/css" />

</head>

<body id="body" class="dark-sidebar">
      <!-- leftbar-tab-menu -->
      <div class="left-sidebar">
            <!-- LOGO -->
            <div class="brand">
                  <a href="{{route('index')}}" class="logo">

                        <span>
                              {{-- <img src="{{asset($Setting["logo_general_website"])}}" alt="logo-large"
                              class="logo-lg
                              logo-light"> --}}
                              {{-- <img src="{{asset($Setting["logo_general_website"])}}" alt="logo-large"
                              class="logo-lg
                              logo-dark"> --}}
                        </span>
                  </a>
            </div>
            <div class="sidebar-user-pro media border-end">
                  <div class="position-relative mx-auto">
                        <img src="{{asset('admin/images/users/image.jpg')}}" alt="user" class="rounded-circle thumb-md">
                        <span class="online-icon position-absolute end-0"><i
                                    class="mdi mdi-record text-success"></i></span>
                  </div>
                  <div class="media-body ms-2 user-detail align-self-center">
                        <h5 class="font-14 m-0 fw-bold">{{Auth::guard('users')->user()->name_user}}</h5>
                        <p class="opacity-50 mb-0">{{Auth::guard('users')->user()->email_user}}</p>
                  </div>
            </div>
            <!-- Tab panes -->
            <!--end logo-->
            <div class="menu-content h-100" data-simplebar>
                  <div class="menu-body navbar-vertical">
                        <div class="collapse navbar-collapse tab-content" id="sidebarCollapse">
                              <!-- Navigation -->
                              <ul class="navbar-nav tab-pane active" id="Main" role="tabpanel">
                                    <li class="nav-item">
                                          <a class="nav-link" href="{{route('index')}}"><i
                                                      class="ti ti-headphones menu-icon"></i><span>Dashboard</span></a>
                                    </li>
                                    <li class="nav-item">
                                          <a class="nav-link" href="#sidebarEcommerce" data-bs-toggle="collapse"
                                                role="button" aria-expanded="false" aria-controls="sidebarEcommerce">
                                                <i class="mdi mdi-shopify menu-icon"></i>
                                                <span>Bán hàng</span>
                                          </a>
                                          <div class="collapse " id="sidebarEcommerce">
                                                <ul class="nav flex-column">
                                                      {{-- <li class="nav-item">
                                        <a class="nav-link" href="{{route('rooms.index')}}">Quản lý phòng</a>
                                    </li> --}}
                                    <!--end nav-item-->
                                    <li class="nav-item">
                                          <a class="nav-link" href="{{route('categorys.index')}}">Quản lý danh mục</a>
                                    </li>
                                    <!--end nav-item-->
                                    <li class="nav-item">
                                          <a class="nav-link" href="{{route('products.index')}}">Quản lý sản phẩm</a>
                                    </li>
                                    <!--end nav-item-->
                              </ul>
                              <!--end nav-->
                        </div>
                        <!--end sidebarEcommerce-->
                        </li>
                        <!--end nav-item-->
                        <li class="nav-item">
                              <a class="nav-link" href="#sidebarPage" data-bs-toggle="collapse" role="button"
                                    aria-expanded="false" aria-controls="sidebarPage">
                                    <i class="mdi mdi-note menu-icon"></i>
                                    <span>Trang</span>
                              </a>
                              <div class="collapse " id="sidebarPage">
                                    <ul class="nav flex-column">
                                          <li class="nav-item">
                                                <a class="nav-link" href="{{route('infos.index')}}">Quản lý trang thông
                                                      tin</a>
                                          </li>
                                          <!--end nav-item-->
                                          <li class="nav-item">
                                                <a class="nav-link" href="{{route('contacsts.index')}}">Quản lý trang
                                                      liên
                                                      hệ</a>
                                          </li>
                                          <!--end nav-item-->
                                    </ul>
                                    <!--end nav-->
                              </div>
                              <!--end sidebarEcommerce-->

                        </li>
                        <!--end nav-item-->
                        <li class="nav-item">
                              <a class="nav-link" href="#sidebarPost" data-bs-toggle="collapse" role="button"
                                    aria-expanded="false" aria-controls="sidebarPost">
                                    <i class="mdi mdi-playlist-edit menu-icon"></i>
                                    <span>Bài viết</span>
                              </a>
                              <div class="collapse " id="sidebarPost">
                                    <ul class="nav flex-column">
                                          <li class="nav-item">
                                                <a class="nav-link" href="{{route('discount-posts.index')}}">Quản lý bài
                                                      viết
                                                </a>
                                          </li>
                                          <!--end nav-item-->

                                    </ul>
                                    <!--end nav-->
                              </div>
                              <!--end sidebarEcommerce-->
                        <li class="nav-item">
                              <a class="nav-link" href="#sidebarSetting" data-bs-toggle="collapse" role="button"
                                    aria-expanded="false" aria-controls="sidebarSetting">
                                    <i class="mdi mdi-settings-outline menu-icon"></i>
                                    <span>Cấu hình chung</span>
                              </a>
                              <div class="collapse " id="sidebarSetting">
                                    <ul class="nav flex-column">
                                          <li class="nav-item">
                                                <a class="nav-link" href="{{route('settings.index')}}">Cấu hình</a>
                                          </li>
                                          <!--end nav-item-->
                                          <li class="nav-item">
                                                <a class="nav-link" href="{{route('sliders.index')}}">Slider</a>
                                          </li>
                                          <li class="nav-item">
                                                <a class="nav-link" href="{{route('banners.index')}}">Banner</a>
                                          </li>
                                    </ul>
                                    <!--end nav-->
                              </div>
                              <!--end sidebarEcommerce-->

                        </li>
                        <!--end nav-item-->
                        </li>
                        <!--end nav-item-->
                        </ul>

                  </div>
                  <!--end sidebarCollapse-->
            </div>
      </div>
      </div>
      <!-- end left-sidenav-->
      <!-- Top Bar Start -->
      <div class="topbar">
            <!-- Navbar -->
            <nav class="navbar-custom" id="navbar-custom">
                  <ul class="list-unstyled topbar-nav float-end mb-0">
                        <li class="dropdown">
                              <a class="nav-link dropdown-toggle nav-user" data-bs-toggle="dropdown" href="#"
                                    role="button" aria-haspopup="false" aria-expanded="false">
                                    <div class="d-flex align-items-center">
                                          <img src="{{asset('admin/images/users/image.jpg')}}" alt="profile-user"
                                                class="rounded-circle me-2 thumb-sm" />
                                          <div>
                                                <small class="d-none d-md-block font-11">Admin</small>
                                                <span class="d-none d-md-block fw-semibold font-12">{{Auth::guard('users')->user()->name_user}}<i
                                                            class="mdi mdi-chevron-down"></i></span>
                                          </div>
                                    </div>
                              </a>
                              <div class="dropdown-menu dropdown-menu-end">
                                    <a class="dropdown-item" href="{{route('change-password.edit')}}"><i
                                                class="ti ti-user font-16 me-1 align-text-bottom"></i> Đổi mật khẩu</a>
                                    {{-- <a class="dropdown-item" href="crypto-settings.html"><i class="ti ti-settings font-16 me-1 align-text-bottom"></i> Settings</a> --}}
                                    <div class="dropdown-divider mb-0"></div>
                                    <a class="dropdown-item" href="{{route('login-out')}}"><i
                                                class="ti ti-power font-16 me-1 align-text-bottom"></i> Đăng xuất</a>
                              </div>
                        </li>
                        <!--end topbar-profile-->
                  </ul>
                  <!--end topbar-nav-->
                  <ul class="list-unstyled topbar-nav mb-0">
                        <li>
                              <button class="nav-link button-menu-mobile nav-icon" id="togglemenu">
                                    <i class="ti ti-menu-2"></i>
                              </button>
                        </li>
                        <li>
                              <button class="nav-link button-menu-mobile nav-icon" onclick="creatSiteMap()">
                                    <i class="la la-refresh text-secondary la-spin progress-icon-spin">
                                    </i>
                              </button>
                        </li>
                        <li>
                              <a class="nav-link button-menu-mobile nav-icon" href="{{asset("")}}" target="_blank">
                                    <i class="la la-home text-secondary progress-icon-spin">
                                    </i>
                              </a>
                        </li>
                  </ul>
            </nav>
            <!-- end navbar-->
      </div>
      <!-- Top Bar End -->
      <div class="page-wrapper">

            <!-- Page Content-->
            <div class="page-content-tab">

                  <div class="container-fluid">
                        @yield('content')
                  </div>

            </div>
            <!-- end page content -->
      </div>
      <!-- end page-wrapper -->
      <!-- Javascript  -->

      <script src="{{asset('admin/plugins/apexcharts/apexcharts.min.js')}}"></script>
      <script src="{{asset('admin/pages/analytics-index.init.js')}}"></script>
      {{-- <script src="{{asset('admin/plugins/apexcharts/apexcharts.min.js')}}"></script> --}}
      {{-- <script src="{{asset('admin/pages/analytics-index.init.js')}}"></script> --}}
      <!-- Javascript  -->
      <script src="{{asset('admin/plugins/select/selectr.min.js')}}"></script>
      <script src="{{asset('admin/plugins/datatables/simple-datatables.js')}}"></script>
      <script src="{{asset('admin/pages/datatable.init.js')}}"></script>
      <script src="{{asset('admin/plugins/tinymce/tinymce.min.js')}}"></script>
      <script src="{{asset('admin/pages/form-editor.init.js')}}"></script>
      <script src="{{asset('admin/pages/forms-advanced.js')}}"></script>
      {{-- <script src="{{asset('admin/plugins/uppy/uppy.min.js')}}"></script> --}}

      {{-- <script src="{{asset('admin/pages/file-upload.init.js')}}"></script> --}}
      {{-- <script src="{{asset('admin/plugins/inputmask/min/jquery.inputmask.bundle.min.js')}}"></script> --}}
      <!-- App js -->
      <script src="{{asset('js/app.js')}}"></script>
      <script type="text/javascript" src="{{ asset('js/laroute.js') }}"></script>
      <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
      <script type="text/javascript" src="{{ asset('js/common.js') }}"></script>
      <script src="{{asset('vendor/laravel-filemanager/js/stand-alone-button.js')}}"></script>
      <!-- Sweet-Alert  -->
      <script src="{{asset('admin/plugins/sweet-alert2/sweetalert2.min.js')}}"></script>
      <script src="{{asset('admin/pages/sweet-alert.init.js')}}"></script>
      <script type="text/javascript" src="{{asset('admin/plugins/jquery-validation/dist/jquery.validate.min.js')}}">
      </script>
      {{-- <script src="{{asset('admin/pages/form-validation.js')}}"></script> --}}
      <script src="{{asset('admin/plugins/mask/dist/jquery.mask.min.js')}}"></script>



      @yield('add-scripts')

</body>
<!--end body-->

</html>