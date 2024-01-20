
@extends('admin-layouts.pages.change-passs.index')
@section('element')
<div class="row">
    <div class="col-12">
        <form role="form" id="form-submit">
        <div class="card">
            {{-- <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Tạo bài viết khuyến mãi</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-de-secondary" href="{{route('discount-posts.index')}}" ><i class="mdi mdi-close-circle-outline"></i> Hủy</a>
                        <a class="btn btn-success" onclick="DiscountPost.save()" ><i class="mdi mdi-content-save"></i> Lưu</a>
                    </div>
                </div>

            </div><!--end card-header--> --}}
            <div class="card-body">

                <div class="card-body">
                        {{-- <nav>
                            <div class="nav nav-tabs" id="nav-tab">
                                <a class="nav-link active" data-bs-toggle="tab" href="#step1">Thông tin chung</a>
                            </div>
                        </nav> --}}
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane active" id="step1">
                                <div class="row">
                                    {{-- <div class="col-lg-3">
                                    </div> --}}
                                    <div class="col-lg-6">
                                        <div class="card">
                                            <div class="card-body">
                                                    <div class="row">

                                                            <label class="form-label mt-2" for="setPassword">Nhập mật khẩu mới</label>
                                                            <input type="password" name="setPassword" class="form-control" id="setPassword" placeholder="Nhập mật khẩu mới">
                                                            <label class="form-label mt-2" for="setPassword">Xác nhận lại mật khẩu</label>
                                                            <input type="password" name="resetPassword" class="form-control" id="resetPassword" placeholder="Xác nhận lại mật khẩu">
                                                            <a onclick="ChangePassword.update()" class="btn btn-primary btn-sm mt-3">Thay đổi mật khẩu</a>

                                                    </div>
                                            </div><!--end card-body-->
                                        </div><!--end card-->
                                    </div> <!-- end col -->
                                </div>
                            </div>

                        </div>
                    </form><!--end form-->
                </div>

            </div>
        </div>
    </div> <!-- end col -->
</div> <!-- end row -->


@section('scripts')
<script src="{{asset('admin/js/change-password/change-password.js')}}"></script>
@endsection
@endsection
