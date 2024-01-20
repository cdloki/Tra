
@extends('admin-layouts.pages.categorys.index')
@section('element')
<div class="row">
    <div class="col-12">
        <form role="form" id="form-submit">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Tạo danh mục</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-de-secondary" href="{{route('categorys.index')}}" ><i class="mdi mdi-close-circle-outline"></i> Hủy</a>
                        <a class="btn btn-success" onclick="Category.save()" ><i class="mdi mdi-content-save"></i> Lưu</a>
                    </div>
                </div>

            </div><!--end card-header-->
            <div class="card-body">

                <div class="card-body">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab">
                                <a class="nav-link active" data-bs-toggle="tab" href="#step1">Thông tin chung</a>
                                <a class="nav-link" data-bs-toggle="tab" href="#step2">SEO</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane active" id="step1">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="code_category" >Mã danh mục <span class="required">(*)</span></label>
                                                                <input type="text" name="code_category" class="form-control" onkeyup="Category.validateCode(this)" id="username" >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="name_category" >Tên danh mục <span class="required">(*)</span></label>
                                                                <input type="text" name="name_category" class="form-control" id="name_category" onkeyup="Category.changeName(this)" >
                                                            </div>
                                                        </div>
                                                        {{-- <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Chọn phòng</label>
                                                                    <select   id="id_room">

                                                                    </select>
                                                            </div>
                                                        </div> --}}
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="url_category" >Url </label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text">/</div>
                                                                    <input type="text" class="form-control" id="url_category" name="url_category" >
                                                                </div>
                                                                <span class="required" style="font-size: 11px;">(*) Nếu bỏ trống hệ thống sẽ tự tạo URL</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Hình ảnh</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text" id="choose_image" data-input="image_category">Chọn hình ảnh</div>
                                                                    <input type="text" class="form-control" id="image_category" name="image_category" >
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Mô tả</label>
                                                                <textarea class="form-control my-editor"  id="description_category" ></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                            </div><!--end card-body-->
                                        </div><!--end card-->
                                    </div> <!-- end col -->
                                </div>
                            </div>
                            <div class="tab-pane" id="step2">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Từ khóa SEO</label>
                                                                    <select   id="tag_seo">

                                                                    </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Tiêu đề SEO</label>
                                                                <input type="text" class="form-control" id="title_seo" name="title_seo">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Mô tả</label>
                                                                <textarea class="form-control my-editor" id="description_seo"  ></textarea>
                                                            </div>
                                                        </div>

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
<script src="{{asset('admin/js/category/category.js')}}"></script>
<script >

// renderSelect("rooms","#id_room","multiple")
renderDataTagSEO()

</script>
@endsection
@endsection
