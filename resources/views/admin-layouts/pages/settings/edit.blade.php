
@extends('admin-layouts.pages.settings.index')
@section('element')
<div class="row">
    <div class="col-12">
        <form role="form" id="form-submit">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Cấu hình</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-de-secondary" href="{{route('settings.index')}}" ><i class="mdi mdi-close-circle-outline"></i> Hủy</a>
                        <a class="btn btn-success" onclick="Setting.update()" ><i class="mdi mdi-content-save"></i> Lưu</a>
                    </div>
                </div>

            </div><!--end card-header-->
            <div class="card-body">

                <div class="card-body">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab">
                                <a class="nav-link active" data-bs-toggle="tab" href="#step1">Thông tin chung</a>
                                <a class="nav-link " data-bs-toggle="tab" href="#step2">Social</a>
                                <a class="nav-link" data-bs-toggle="tab" href="#step3">SEO</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane active" id="step1">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <input type="hidden" name="id" value="{{$dataSetting["id"]}}">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="title_website" >Tiêu đề Website</label>
                                                                <input type="text" name="title_website" class="form-control" id="title_website"
                                                                value="{{$dataSetting["title_website"]}}">
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="color_general_website" >Màu Website</label>
                                                                <input type="color" name="color_general_website" class="form-control" id="color_general_website"
                                                                value="{{$dataSetting["color_general_website"]}}"
                                                                >
                                                            </div>
                                                        </div>
                                                        {{-- <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="code_Setting" >Màu website</label>
                                                                <input type="text" name="code_Setting" class="form-control" id="username" >
                                                            </div>
                                                        </div> --}}
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="fontsize_general_website" >Font Size Website</label>
                                                                <input type="number" name="fontsize_general_website" class="form-control" id="fontsize_general_website"
                                                                value="{{$dataSetting["fontsize_general_website"]}}"
                                                                >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Icon Website</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text" id="choose_image" data-input="icon_general_website">Chọn hình ảnh</div>
                                                                    <input type="text" class="form-control" id="icon_general_website" name="icon_general_website"
                                                                    value="{{$dataSetting["icon_general_website"]}}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Logo Website</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text" id="choose_image2" data-input="logo_general_website">Chọn hình ảnh</div>
                                                                    <input type="text" class="form-control" id="logo_general_website" name="logo_general_website"
                                                                    value="{{$dataSetting["logo_general_website"]}}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        {{-- ---------------- --}}
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="phone_website" >Số điện thoại</label>
                                                                <input type="text" name="phone_website" class="form-control" id="phone_website"
                                                                value="{{$dataSetting["phone_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="facebook_website" >Facebook cá nhân</label>
                                                                <input type="text" name="facebook_website" class="form-control" id="facebook_website"
                                                                value="{{$dataSetting["facebook_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="fanpage_website" >Trang facebook</label>
                                                                <input type="text" name="fanpage_website" class="form-control" id="fanpage_website"
                                                                value="{{$dataSetting["fanpage_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="group_website" >Nhóm facebook</label>
                                                                <input type="text" name="group_website" class="form-control" id="group_website"
                                                                value="{{$dataSetting["group_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="tiktok_website" >Tiktok</label>
                                                                <input type="text" name="tiktok_website" class="form-control" id="tiktok_website"
                                                                value="{{$dataSetting["tiktok_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="youtube_website" >Youtube</label>
                                                                <input type="text" name="youtube_website" class="form-control" id="youtube_website"
                                                                value="{{$dataSetting["youtube_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="zalo_website" >Zalo</label>
                                                                <input type="text" name="zalo_website" class="form-control" id="zalo_website"
                                                                value="{{$dataSetting["zalo_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="address_website" >Địa chỉ</label>
                                                                <input type="text" name="address_website" class="form-control" id="address_website"
                                                                value="{{$dataSetting["address_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="email_website" >Email</label>
                                                                <input type="text" name="email_website" class="form-control" id="email_website"
                                                                value="{{$dataSetting["email_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="shoppe_website" >Shoppe</label>
                                                                <input type="text" name="shoppe_website" class="form-control" id="shoppe_website"
                                                                value="{{$dataSetting["shoppe_website"]}}">
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
                                                                <label for="googleanaly_social_website" >Google Analytics ID</label>
                                                                <input type="text" name="googleanaly_social_website" class="form-control" id="googleanaly_social_website"
                                                                value="{{$dataSetting["googleanaly_social_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="facebook_social_website" >Facebook ID</label>
                                                                <input type="text" name="facebook_social_website" class="form-control" id="facebook_social_website"
                                                                value="{{$dataSetting["facebook_social_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label for="messenger_social_website" >Messenger</label>
                                                                <input type="text" name="messenger_social_website" class="form-control" id="messenger_social_website"
                                                                value="{{$dataSetting["messenger_social_website"]}}">
                                                            </div>
                                                        </div>

                                                    </div>
                                            </div><!--end card-body-->
                                        </div><!--end card-->
                                    </div> <!-- end col -->
                                </div>
                            </div>
                            <div class="tab-pane" id="step3">
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
                                                                    <input type="hidden" id="keyword_seo_website" value="{{$dataSetting["keyword_seo_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Tiêu đề SEO Website</label>
                                                                <input type="text" class="form-control" id="title_seo_website" name="title_seo_website"
                                                                value="{{$dataSetting["title_seo_website"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Hình ảnh SEO Website</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text" id="choose_image3" data-input="image_seo_website">Chọn hình ảnh</div>
                                                                    <input type="text" class="form-control" id="image_seo_website" name="image_seo_website"
                                                                    value="{{$dataSetting["image_seo_website"]}}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Mô tả Website</label>
                                                                <textarea class="form-control my-editor" id="description_seo_website"  >{!! $dataSetting["description_seo_website"] !!}</textarea>
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
<script src="{{asset('admin/js/setting/setting.js')}}"></script>
<script >

let keyword_seo_website = $("#keyword_seo_website").val()
renderDataTagSEO(keyword_seo_website,"edit")

</script>
@endsection
@endsection
