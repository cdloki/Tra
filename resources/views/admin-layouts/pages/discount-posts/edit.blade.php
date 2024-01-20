
@extends('admin-layouts.pages.discount-posts.index')
@section('element')
<div class="row">
    <div class="col-12">
        <form role="form" id="form-submit">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Cập nhật bài viết</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-de-secondary" href="{{route('discount-posts.index')}}" ><i class="mdi mdi-keyboard-backspace"></i> Quay lại</a>
                        <a class="btn btn-success" onclick="DiscountPost.update()" ><i class="mdi mdi-square-edit-outline"></i> Cập nhật</a>
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
                                                <input type="hidden" name="id" value="{{$dataDiscountPost["id"]}}">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label for="name_post" >Tên phòng <span class="required">(*)</span></label>
                                                                <input type="text" name="name_post" class="form-control" id="name_post"
                                                                value="{{$dataDiscountPost["name_post"]}}"
                                                                onkeyup="DiscountPost.changeName(this)" >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="url_post" >Url </label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text">/</div>
                                                                    <input type="text" class="form-control" id="url_post" name="url_post"
                                                                    value="{{$dataDiscountPost["url_post"]}}"
                                                                    >
                                                                </div>
                                                                <span class="required" style="font-size: 11px;">(*) Nếu bỏ trống hệ thống sẽ tự tạo URL</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Hình ảnh</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text" id="choose_image" data-input="image_post">Chọn hình ảnh</div>
                                                                    <input type="text" class="form-control" id="image_post" name="image_post"
                                                                    value="{{$dataDiscountPost["image_post"]}}"
                                                                    >
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Mô tả ngắn bài viết</label>
                                                                <textarea class="form-control my-editor"  id="content_post" >{!! $dataDiscountPost["content_post"]!!}</textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Nội dung bài viết</label>
                                                                <textarea class="form-control my-editor"  id="description_post" >{!! $dataDiscountPost["description_post"]!!}</textarea>
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
                                                                    <input type="hidden" id="keyword_seo_post" value="{{$dataDiscountPost["keyword_seo_post"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Tiêu đề SEO</label>
                                                                <input type="text"  class="form-control" id="title_seo" name="title_seo"
                                                                value="{{$dataDiscountPost["title_seo_post"]}}"
                                                                >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Mô tả</label>
                                                                <textarea class="form-control my-editor" id="description_seo"  >
                                                                    {!! $dataDiscountPost["description_seo_post"]!!}
                                                                </textarea>
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
<script src="{{asset('admin/js/discount-posts/discount-posts.js')}}"></script>
<script >

let keyword_seo_post = $("#keyword_seo_post").val()
renderDataTagSEO(keyword_seo_post,"edit")

</script>
@endsection
@endsection
