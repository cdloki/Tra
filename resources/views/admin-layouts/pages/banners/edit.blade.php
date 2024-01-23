
@extends('admin-layouts.pages.sliders.index')
@section('element')
<div class="row">
    <div class="col-12">
        <form role="form" id="form-submit">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Cập nhật Banner</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-de-secondary" href="{{route('banners.index')}}" ><i class="mdi mdi-keyboard-backspace"></i> Quay lại</a>
                        <a class="btn btn-success" onclick="Banner.update()" ><i class="mdi mdi-square-edit-outline"></i> Cập nhật</a>
                    </div>
                </div>

            </div><!--end card-header-->
            <div class="card-body">
                    <nav>
                    <div class="nav nav-tabs" id="nav-tab">
                        <a class="nav-link active" data-bs-toggle="tab" href="#step1">Thông tin chung</a>
                        {{-- <a class="nav-link" data-bs-toggle="tab" href="#step2">SEO</a> --}}
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane active" id="step1">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <input type="hidden" name="id" value="{{$dataBanner["id"]}}">

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="type_banner" >Loại banner</label>
                                                    <input type="text" name="type_banner" class="form-control"
                                                        id="type_banner" value="{{$dataBanner['type_banner']}}" disabled>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="name_banner" >Tên banner</label>
                                                    <input type="text" name="name_banner" class="form-control"
                                                        id="name_banner" value="{{$dataBanner['name_banner']}}">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label >Hình ảnh</label>
                                                    <div class="input-group">
                                                        <div class="input-group-text" id="choose_image" data-input="image_banner">Chọn hình ảnh</div>
                                                        <input type="text" class="form-control" id="image_banner" name="image_banner"
                                                            value="{{$dataBanner['image_banner']}}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="url_banner" >Url </label>
                                                    <div class="input-group">
                                                        <div class="input-group-text">/</div>
                                                        <input type="text" class="form-control" id="url_banner" name="url_banner"
                                                            value="{{$dataBanner['url_banner']}}">
                                                    </div>
                                                </div>
                                            </div>
                                           <div class="col-md-12">
                                            <label for="description_banner" >Mô tả </label>
                                            <textarea class="form-control my-editor" style="height: 1000px" id="description_banner"  >
                                                {!! $dataBanner["description_banner"]!!}
                                            </textarea>
                                        </div>

                                        </div>
                                    </div>
                                    <!--end card-body-->
                                </div>
                                <!--end card-->
                            </div>
                            <!-- end col -->
                        </div>
                    </div>
                </div>
                </form><!--end form-->
            </div>
        </div>
    </div> <!-- end col -->
</div> <!-- end row -->


@section('scripts')
<script src="{{asset('admin/js/banner/banner.js')}}"></script>
<script >


</script>
@endsection
@endsection
