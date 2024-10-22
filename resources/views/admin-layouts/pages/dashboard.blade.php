@extends('admin-layouts.admin-layouts.index')
@section('content')
<!-- Page-Title -->
<div class="row">
      <div class="col-sm-12">
            <div class="page-title-box">
                  <div class="float-end">
                        <ol class="breadcrumb">
                              <li class="breadcrumb-item"><a href="">Quản trị</a>
                              </li>
                              <!--end nav-item-->
                              <li class="breadcrumb-item"><a href="">Dashboard</a>
                              </li>
                              <!--end nav-item-->

                        </ol>
                  </div>
                  <h4 class="page-title">Analytics</h4>
            </div>
            <!--end page-title-box-->
      </div>
      <!--end col-->
</div>
<div class="row">
      
      <!--end col-->
      <div class="col-lg-12 order-lg-3 order-md-2 order-sm-2">
            <div class="row justify-content-center">
                  <div class="col-lg-3 col-md-6">
                        <div class="card overflow-hidden">
                              <div class="card-body">
                                    <div class="row d-flex">
                                          <div class="col-3">
                                                <i class="ti ti-users font-36 align-self-center text-dark"></i>
                                          </div>
                                          <!--end col-->
                                          <div class="col-12 ms-auto align-self-center">
                                                <div id="dash_spark_1" class="mb-3"></div>
                                          </div>
                                          <!--end col-->
                                          <div class="col-12 ms-auto align-self-center">
                                                <h3 class="text-dark my-0 font-22 fw-bold">500</h3>
                                                <p class="text-muted mb-0 fw-semibold">Sản phẩm</p>
                                          </div>
                                          <!--end col-->
                                    </div>
                                    <!--end row-->
                              </div>
                              <!--end card-body-->
                        </div>
                        <!--end card-->
                  </div>
                  <!--end col-->
                  <div class="col-lg-3 col-md-6">
                        <div class="card overflow-hidden">
                              <div class="card-body">
                                    <div class="row d-flex">
                                          <div class="col-3">
                                                <i class="ti ti-clock font-36 align-self-center text-dark"></i>
                                          </div>
                                          <!--end col-->
                                          <div class="col-auto ms-auto align-self-center">
                                                <span class="badge badge-soft-success px-2 py-1 font-11">Active</span>
                                          </div>
                                          <!--end col-->
                                          <div class="col-12 ms-auto align-self-center">
                                                <div id="dash_spark_2" class="mb-3"></div>
                                          </div>
                                          <!--end col-->
                                          <div class="col-12 ms-auto align-self-center">
                                                <h3 class="text-dark my-0 font-22 fw-bold">20</h3>
                                                <p class="text-muted mb-0 fw-semibold">Danh mục Sản phẩm</p>
                                          </div>
                                          <!--end col-->
                                    </div>
                                    <!--end row-->
                              </div>
                              <!--end card-body-->
                        </div>
                        <!--end card-->
                  </div>
                  <!--end col-->
                  <div class="col-lg-3 col-md-6">
                        <div class="card overflow-hidden">
                              <div class="card-body">
                                    <div class="row d-flex">
                                          <div class="col-3">
                                                <i class="ti ti-activity font-36 align-self-center text-dark"></i>
                                          </div>
                                          <!--end col-->
                                          <div class="col-12 ms-auto align-self-center">
                                                <div id="dash_spark_3" class="mb-3"></div>
                                          </div>
                                          <!--end col-->
                                          <div class="col-12 ms-auto align-self-center">
                                                <h3 class="text-dark my-0 font-22 fw-bold">100</h3>
                                                <p class="text-muted mb-0 fw-semibold">Bài viết</p>
                                          </div>
                                          <!--end col-->
                                    </div>
                                    <!--end row-->
                              </div>
                              <!--end card-body-->
                        </div>
                        <!--end card-->
                  </div>
                  <!--end col-->

                  <div class="col-lg-3 col-md-6">
                        <div class="card overflow-hidden">
                              <div class="card-body">
                                    <div class="row d-flex">
                                          <div class="col-3">
                                                <i class="ti ti-confetti font-36 align-self-center text-dark"></i>
                                          </div>
                                          <!--end col-->
                                          <div class="col-auto ms-auto align-self-center">
                                                <span class="badge badge-soft-danger px-2 py-1 font-11">-2%</span>
                                          </div>
                                          <!--end col-->
                                          <div class="col-12 ms-auto align-self-center">
                                                <div id="dash_spark_4" class="mb-3"></div>
                                          </div>
                                          <!--end col-->
                                          <div class="col-12 ms-auto align-self-center">
                                                <h3 class="text-dark my-0 font-22 fw-bold">5</h3>
                                                <p class="text-muted mb-0 fw-semibold">Danh mục Bài viết</p>
                                          </div>
                                          <!--end col-->
                                    </div>
                                    <!--end row-->
                              </div>
                              <!--end card-body-->
                        </div>
                        <!--end card-->
                  </div>
                  <!--end col-->
            </div>
            
      </div>
      <!--end col-->
</div>
<!--end row-->



{{-- @section('after_script')
<script src="{{asset('js/Category/Category.js')}}"></script>
<script type="">
      $('.numeric').mask('000000000000', {
        reverse: true
    });
</script>
@endsection --}}
@endsection