
@extends('admin-layouts.pages.products.index')
@section('element')
<div class="row">
    <div class="col-12">
        <form role="form" id="form-submit">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Tạo sản phẩm</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-de-secondary" href="{{route('products.index')}}" ><i class="mdi mdi-close-circle-outline"></i> Hủy</a>
                        <a class="btn btn-success" onclick="Product.save()" ><i class="mdi mdi-content-save"></i> Lưu</a>
                    </div>
                </div>

            </div><!--end card-header-->
            <div class="card-body">

                <div class="card-body">
                        {{-- <nav>
                            <div class="nav nav-tabs" id="nav-tab">
                                <a class="nav-link active" data-bs-toggle="tab" href="#step1">Thông tin chung</a>
                                <a class="nav-link" data-bs-toggle="tab" href="#step2">Thông tin chi tiết</a>
                            </div>
                        </nav> --}}
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane active" id="step1">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="code_product" >Mã sản phẩm <span class="required">(*)</span></label>
                                                                <input type="text" name="code_product" class="form-control" onkeyup="Product.validateCode(this)" id="code_product" >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="name_product" >Tên sản phẩm <span class="required">(*)</span></label>
                                                                <input type="text" name="name_product" class="form-control" id="name_product" onkeyup="Product.changeName(this)" >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="url_product" >Url </label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text">/</div>
                                                                    <input type="text" class="form-control" id="url_product" name="url_product" >
                                                                </div>
                                                                <span class="required" style="font-size: 11px;">(*) Nếu bỏ trống hệ thống sẽ tự tạo URL</span>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Chọn Danh mục</label>
                                                                    <select   id="id_category">

                                                                    </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="cost" >Giá gốc</label>
                                                                <div class="input-group">
                                                                    <input type="text" name="cost" class="form-control" id="cost" onkeydown="maskData(this)"  >
                                                                    <div class="input-group-text">VNĐ</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="price" >Giá bán</label>
                                                                <div class="input-group">
                                                                    <input type="text" name="price" class="form-control" id="price" onkeydown="maskData(this)"  >
                                                                    <div class="input-group-text">VNĐ</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="shopee_url" >Url Shoppe </label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text">/</div>
                                                                    <input type="text" class="form-control" id="shopee_url" name="shopee_url" >
                                                                </div>
                                                            </div>
                                                        </div>
                                                        {{-- <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="name__product" >Bảo hành</label>
                                                                <input type="text" name="name__product" class="form-control" id="name__product"  >
                                                            </div>
                                                        </div> --}}
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <div id="drag-drop-area">
                                                                    <div class="uppy-Root" dir="ltr">
                                                                        <div class="uppy-Dashboard uppy-Dashboard--animateOpenClose uppy-size--height-md uppy-Dashboard--isInnerWrapVisible" aria-hidden="false" aria-label="File Uploader">
                                                                            <div class="uppy-Dashboard-overlay" tabindex="-1"></div>
                                                                            <div class="uppy-Dashboard-inner" style="width: auto; height: 400px;">
                                                                                <div class="uppy-Dashboard-innerWrap">
                                                                                    <div class="uppy-DashboardContent-bar">
                                                                                        <button class="uppy-DashboardContent-back" type="button" >Hủy</button>

                                                                                        <div class="uppy-DashboardContent-title" role="heading" aria-level="1" id="total">Chưa có file nào được chọn</div>

                                                                                        <button class="uppy-DashboardContent-addMore" id="choose_image" data-input="image_product" data-preview="review" type="button" aria-label="Thêm ảnh" title="Thêm ảnh">
                                                                                            <svg aria-hidden="true" focusable="false" class="uppy-c-icon" width="15" height="15" viewBox="0 0 15 15">
                                                                                                <path d="M8 6.5h6a.5.5 0 0 1 .5.5v.5a.5.5 0 0 1-.5.5H8v6a.5.5 0 0 1-.5.5H7a.5.5 0 0 1-.5-.5V8h-6a.5.5 0 0 1-.5-.5V7a.5.5 0 0 1 .5-.5h6v-6A.5.5 0 0 1 7 0h.5a.5.5 0 0 1 .5.5v6z"></path>
                                                                                            </svg>
                                                                                        </button>


                                                                                    </div>
                                                                                    <input
                                                                                        type="hidden"
                                                                                        {{-- type="text" --}}
                                                                                        class="form-control" id="image_product" name="image_product" >
                                                                                    <div class="uppy-Dashboard-files" role="list">
                                                                                        <div  style="position: relative; width: 100%; min-height: 100%; height: 71px;">
                                                                                            <div  style="position: absolute; top: 0px; left: 0px; width: 100%; overflow: visible;">
                                                                                                <div id="review" >

                                                                                                    {{-- <div class="uppy-Dashboard-Item is-resumable" id="uppy_uppy-aa9e3d0d07ab512a2175a2f1476f7a1b/png-1e-image/png-738371-1648910059683" role="listitem">
                                                                                                        <div class="uppy-Dashboard-Item-preview">
                                                                                                            <div class="uppy-Dashboard-Item-previewInnerWrap" style="background-color: rgb(104, 109, 224);">
                                                                                                                <img class="uppy-Dashboard-Item-previewImg" alt="aa9e3d0d07ab512a2175a2f1476f7a1b.png" src="http://127.0.0.1:8000/images/users/user-4.jpg">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="uppy-Dashboard-Item-fileInfoAndButtons">
                                                                                                            <div class="uppy-Dashboard-Item-fileInfo" >
                                                                                                                <div class="uppy-Dashboard-Item-name" title="aa9e3d0d07ab512a2175a2f1476f7a1b.png">aa9e3d0d07ab51...1476f7a1b.png</div>
                                                                                                                <div class="uppy-Dashboard-Item-status">
                                                                                                                    <div class="uppy-Dashboard-Item-statusSize">721 KB</div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="uppy-Dashboard-Item-actionWrapper">
                                                                                                                <button class="uppy-u-reset uppy-Dashboard-Item-action uppy-Dashboard-Item-action--remove" type="button" aria-label="Remove file" title="Remove file">
                                                                                                                    <svg aria-hidden="true" focusable="false" class="uppy-c-icon" width="18" height="18" viewBox="0 0 18 18">
                                                                                                                        <path d="M9 0C4.034 0 0 4.034 0 9s4.034 9 9 9 9-4.034 9-9-4.034-9-9-9z"></path>
                                                                                                                        <path fill="#FFF" d="M13 12.222l-.778.778L9 9.778 5.778 13 5 12.222 8.222 9 5 5.778 5.778 5 9 8.222 12.222 5l.778.778L9.778 9z"></path>
                                                                                                                    </svg>
                                                                                                                </button>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>

                                                                                                    <div class="uppy-Dashboard-Item is-resumable" id="uppy_uppy-aa9e3d0d07ab512a2175a2f1476f7a1b/png-1e-image/png-738371-1648910059683" role="listitem">
                                                                                                        <div class="uppy-Dashboard-Item-preview">
                                                                                                            <div class="uppy-Dashboard-Item-previewInnerWrap" style="background-color: rgb(104, 109, 224);">
                                                                                                                <img class="uppy-Dashboard-Item-previewImg" alt="aa9e3d0d07ab512a2175a2f1476f7a1b.png" src="http://127.0.0.1:8000/images/users/user-4.jpg">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="uppy-Dashboard-Item-fileInfoAndButtons">
                                                                                                            <div class="uppy-Dashboard-Item-fileInfo" >
                                                                                                                <div class="uppy-Dashboard-Item-name" title="aa9e3d0d07ab512a2175a2f1476f7a1b.png">aa9e3d0d07ab51...1476f7a1b.png</div>
                                                                                                                <div class="uppy-Dashboard-Item-status">
                                                                                                                    <div class="uppy-Dashboard-Item-statusSize">721 KB</div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="uppy-Dashboard-Item-actionWrapper">
                                                                                                                <button class="uppy-u-reset uppy-Dashboard-Item-action uppy-Dashboard-Item-action--remove" type="button" aria-label="Remove file" title="Remove file">
                                                                                                                    <svg aria-hidden="true" focusable="false" class="uppy-c-icon" width="18" height="18" viewBox="0 0 18 18">
                                                                                                                        <path d="M9 0C4.034 0 0 4.034 0 9s4.034 9 9 9 9-4.034 9-9-4.034-9-9-9z"></path>
                                                                                                                        <path fill="#FFF" d="M13 12.222l-.778.778L9 9.778 5.778 13 5 12.222 8.222 9 5 5.778 5.778 5 9 8.222 12.222 5l.778.778L9.778 9z"></path>
                                                                                                                    </svg>
                                                                                                                </button>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div> --}}

                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Mô tả ngắn</label>
                                                                <textarea class="form-control my-editor"  id="note" ></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Mô tả</label>
                                                                <textarea class="form-control my-editor"  id="description_product" ></textarea>
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
                                                        {{-- <div class="col-md-6">
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
                                                        </div>--}}



                                                        {{-- <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Hình ảnh</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text" id="choose_image" data-input="image__product" data-preview="review">Chọn hình ảnh</div>
                                                                    <input type="text" class="form-control" id="image__product" name="image__product" >

                                                                </div>
                                                                <div id="review" ></div>

                                                            </div>
                                                        </div> --}}
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="warranty" >Thông tin bảo hành</label>
                                                                <input type="text" name="warranty" class="form-control" id="warranty"  >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="time_warranty" >Thời gian bảo hành</label>
                                                                <input type="text" name="time_warranty" class="form-control" id="time_warranty"  >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Quà tặng</label>
                                                                <textarea class="form-control my-editor"  id="gift" ></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Thành phần</label>
                                                                <textarea class="form-control my-editor"  id="element_product" ></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Thông số kĩ thuật</label>
                                                                <textarea class="form-control my-editor"  id="specifications" ></textarea>
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
<script src="{{asset('admin/js/product/product.js')}}"></script>
<script >
renderSelect("categorys","#id_category","multiple")

// renderDataTagSEO()
</script>
@endsection
@endsection
