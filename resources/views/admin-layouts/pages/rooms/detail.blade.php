
@extends('admin-layouts.pages.rooms.index')
@section('element')
<div class="row">
    <div class="col-12">
        <form role="form" id="form-submit">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Chi tiết phòng</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-de-secondary" href="{{route('rooms.index')}}" ><i class="mdi mdi-keyboard-backspace"></i> Quay lại</a>
                        <a class="btn btn-success" href="{{route('rooms.edit',$dataRoom['id'])}}" ><i class="mdi mdi-square-edit-outline"></i> Cập nhật</a>
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
                                                                <label for="code_room" >Mã phòng <span class="required">(*)</span></label>
                                                                <input type="text" name="code_room" class="form-control" onkeyup="Room.validateCode(this)"
                                                                value="{{$dataRoom["code_room"]}}"
                                                                id="username" disabled>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="name_room" >Tên phòng <span class="required">(*)</span></label>
                                                                <input type="text" name="name_room" class="form-control" id="name_room"
                                                                value="{{$dataRoom["name_room"]}}"
                                                                onkeyup="Room.changeName(this)" disabled>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label for="url_room" >Url </label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text">/</div>
                                                                    <input type="text" class="form-control" id="url_room" name="url_room"
                                                                    value="{{$dataRoom["url_room"]}}" disabled
                                                                    >
                                                                </div>
                                                                <span class="required" style="font-size: 11px;">(*) Nếu bỏ trống hệ thống sẽ tự tạo URL</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Hình ảnh</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-text">Chọn hình ảnh</div>
                                                                    <input type="text" class="form-control" id="image_room" name="image_room"
                                                                    value="{{$dataRoom["image_room"]}}" disabled
                                                                    >
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Mô tả</label>
                                                                <textarea class="form-control my-editor-detail"  id="description_room" >{!! $dataRoom["description_room"]!!}</textarea>
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
                                                                    <input type="hidden" id="keyword_seo_room" value="{{$dataRoom["keyword_seo_room"]}}">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="mb-3">
                                                                <label >Tiêu đề SEO</label>
                                                                <input type="text"  class="form-control" id="title_seo" name="title_seo"
                                                                value="{{$dataRoom["title_seo_room"]}}" disabled
                                                                >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="mb-3">
                                                                <label >Mô tả</label>
                                                                <textarea class="form-control my-editor-detail" id="description_seo"  >
                                                                    {!! $dataRoom["description_seo_room"]!!}
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
<script src="{{asset('admin/js/room/room.js')}}"></script>
<script >

let keyword_seo_room = $("#keyword_seo_room").val()
renderDataTagSEO(keyword_seo_room,"detail")

</script>
@endsection
@endsection
