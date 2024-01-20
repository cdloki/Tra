<!DOCTYPE html>
<html lang="en">

<head>


    <meta charset="utf-8" />
    <title>{{$Setting["title_website"]}} - Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="{{asset($Setting["icon_general_website"])}}">



    <!-- App css -->
    <link href="{{asset('admin/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/app.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/custom.css')}}" rel="stylesheet" type="text/css" />

</head>

<body id="body" class="auth-page"
    style="background-image: url({{asset('admin/images/p-1.png')}}); background-size: cover; background-position: center center;">
    <!-- Log In page -->
    <div class="container-md">
        <div class="row d-flex justify-content-center" style="margin-top: 40px;">
            <div class="col-12 align-self-center">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-4 mx-auto">
                            <div class="card">
                                <div class="card-body p-0 auth-header-box"
                                    style="background-color: #e3b557;border-radius: 5px 5px 0px 0px;">
                                    <div class="text-center p-3">
                                        <a href="/" class="logo logo-admin">
                                            <img src="{{asset($Setting["icon_general_website"])}}" width="120"
                                                alt="logo" class="Logo Phương Nam">
                                        </a>
                                        <h2 class="mt-3 mb-1 fw-semibold text-white font-28"
                                            style="text-transform:uppercase ;">Đăng nhập</h2>
                                        <!-- <p class="mb-0">Bạn phải đăng nhập để quản trị hệ thống</p> -->
                                    </div>
                                </div>
                                <div class="card-body pt-0">
                                    <form class="my-4" action="{{route('check-login')}}" method="post">
                                        @csrf
                                        <div class="form-group mb-2">
                                            <label class="form-label" for="user_name">Tên đăng nhập</label>
                                            <input type="text" class="form-control" id="user_name" name="user_name"
                                                placeholder="Enter username">
                                        </div>
                                        <!--end form-group-->

                                        <div class="form-group">
                                            <label class="form-label" for="password">Mật khẩu</label>
                                            <input type="password" class="form-control" name="password" id="password"
                                                placeholder="Enter password">
                                        </div>
                                        <!--end form-group-->

                                        <div class="form-group row mt-3">
                                            {{-- <div class="col-sm-6">
                                                <div class="form-check form-switch form-switch-success">
                                                    <input class="form-check-input" type="checkbox" id="customSwitchSuccess">
                                                    <label class="form-check-label" for="customSwitchSuccess">Remember me</label>
                                                </div>
                                            </div><!--end col--> --}}
                                            {{-- <div class="col-sm-6 text-end">
                                                <a href="#" class="text-muted font-13"><i class="dripicons-lock"></i> Forgot password?</a>
                                            </div><!--end col--> --}}
                                        </div>
                                        <!--end form-group-->

                                        <div class="form-group mb-0 row">
                                            <div class="col-12">
                                                <div class="d-grid mt-3">
                                                    <button class="btn btn-primary" type="submit">Đăng nhập <i
                                                            class="fas fa-sign-in-alt ms-1"></i></button>
                                                </div>
                                            </div>
                                            <!--end col-->
                                        </div>
                                        <!--end form-group-->
                                    </form>
                                    <!--end form-->
                                    <div class="m-3 text-center text-muted">
                                        {{-- <p class="mb-0">Bạn quên tài khoản ?  <a href="#" class="text-primary ms-2">Free Resister</a></p> --}}
                                    </div>
                                    <hr class="hr-dashed mt-4">
                                    <div class="text-center mt-n5">
                                        {{-- <h6 class="card-bg px-3 my-4 d-inline-block">Or Login With</h6> --}}
                                    </div>
                                    <div class="d-flex justify-content-center mb-1">
                                        {{-- <a href="" class="d-flex justify-content-center align-items-center thumb-sm bg-soft-primary rounded-circle me-2">
                                            <i class="fab fa-facebook align-self-center"></i>
                                        </a>
                                        <a href="" class="d-flex justify-content-center align-items-center thumb-sm bg-soft-info rounded-circle me-2">
                                            <i class="fab fa-twitter align-self-center"></i>
                                        </a>
                                        <a href="" class="d-flex justify-content-center align-items-center thumb-sm bg-soft-danger rounded-circle">
                                            <i class="fab fa-google align-self-center"></i>
                                        </a> --}}
                                    </div>
                                </div>
                                <!--end card-body-->
                            </div>
                            <!--end card-->
                        </div>
                        <!--end col-->
                    </div>
                    <!--end row-->
                </div>
                <!--end card-body-->
            </div>
            <!--end col-->
        </div>
        <!--end row-->
    </div>
    <!--end container-->
    <script src="https://unpkg.com/sweetalert2@7.18.0/dist/sweetalert2.all.js"></script>

    <script src="{{asset('admin/plugins/sweet-alert2/sweetalert2.min.js')}}"></script>

    @include('sweetalert::alert')

    <!-- App js -->
    <script src="{{asset('js/app.js')}}"></script>

</body>

</html>