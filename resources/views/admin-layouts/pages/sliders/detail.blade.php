@extends('admin-layouts.pages.sliders.index')
@section('element')
<div class="row">
    <div class="col-12">
        <form role="form" id="form-submit">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-6">
                            <h4 class="card-title">Chi tiết Slider</h4>
                        </div>
                        <div class="col-6" style="text-align: right">
                            <a class="btn btn-de-secondary" href="{{route('sliders.index')}}" ><i class="mdi mdi-keyboard-backspace"></i> Quay lại</a>
                            <a class="btn btn-success" href="{{route('sliders.edit',$dataSlider['id'])}}" ><i class="mdi mdi-square-edit-outline"></i> Cập nhật</a>
                        </div>
                    </div>
                </div>
                <!--end card-header-->
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
                                        <div class="row">
                                            {{-- <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="keyword_slider" >Từ khóa</label>
                                                    <input type="text" name="keyword_slider" class="form-control"
                                                        id="keyword_slider" value="{{$dataSlider['keyword_slider']}}" disabled>
                                                </div>
                                            </div> --}}
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="tbutton_slider" >Nội dung nút</label>
                                                    <input type="text" name="tbutton_slider" class="form-control"
                                                        id="tbutton_slider"  value="{{$dataSlider['tbutton_slider']}}" disabled>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="location_slider" >Vị trí</label>
                                                    <input type="number" name="location_slider" class="form-control"
                                                        id="location_slider" value="{{$dataSlider['location_slider']}}" disabled>
                                                    <span class="required" style="font-size: 11px;">(*) Vị trí sẽ ưu tiên từ thấp đến cao</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label >Hình ảnh</label>
                                                    <div class="input-group">
                                                        <div class="input-group-text" id="choose_image" data-input="image_slider">Chọn hình ảnh</div>
                                                        <input type="text" class="form-control" id="image_slider" name="image_slider"
                                                            value="{{$dataSlider['image_slider']}}" disabled>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label for="url_slider" >Url </label>
                                                    <div class="input-group">
                                                        <div class="input-group-text">/</div>
                                                        <input type="text" class="form-control" id="url_slider" name="url_slider"
                                                            value="{{$dataSlider['url_slider']}}" disabled>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="mb-3">
                                                    <label >Từ khóa</label>
                                                    <textarea class="form-control my-editor-detail"  id="keyword_slider" >
                                                        {!! $dataSlider['keyword_slider'] !!}
                                                    </textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="mb-3">
                                                    <label >Mô tả</label>
                                                    <textarea class="form-control my-editor-detail"  id="description_slider" >
                                                    {!! $dataSlider['description_slider'] !!}
                                                    </textarea>
                                                </div>
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
        <!--end form-->
        </div>
        </div>
    </div>
    <!-- end col -->
</div>
<!-- end row -->
@section('scripts')
<script src="{{asset('admin/js/slider/slider.js')}}"></script>
<script ></script>
@endsection
@endsection
