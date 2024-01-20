
@extends('admin-layouts.pages.infos.index')
@section('element')
<div class="row">
    <div class="col-12">
        <form role="form" id="form-submit">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Thông tin</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-de-secondary" href="{{route('infos.index')}}" ><i class="mdi mdi-keyboard-backspace"></i> Quay lại</a>
                        <a class="btn btn-success" onclick="Info.update()" ><i class="mdi mdi-square-edit-outline"></i> Cập nhật</a>
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
                                            <input type="hidden" id="id_post" name="id" value="{{$dataInfo["id"]}}">
                                                <div class="row">
                                                    <div class="col-md-12" >
                                                        <textarea class="form-control my-editor" style="height: 1000px" id="description_post"  >
                                                            {!! $dataInfo["description_post"]!!}
                                                        </textarea>
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
                                                                <input type="hidden" id="keyword_seo_post" value="{{$dataInfo["keyword_seo_post"]}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <label >Tiêu đề SEO</label>
                                                            <input type="text"  class="form-control" id="title_seo" name="title_seo"
                                                            value="{{$dataInfo["title_seo_post"]}}"
                                                            >
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="mb-3">
                                                            <label >Mô tả</label>
                                                            <textarea class="form-control my-editor" id="description_seo"  >
                                                                {!! $dataInfo["description_seo_post"]!!}
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

{{-- @dd($dataMappingRoomCategory) --}}
@section('scripts')
<script src="{{asset('admin/js/info/info.js')}}"></script>
<script >
let keyword_seo_post = $("#keyword_seo_post").val();
renderDataTagSEO(keyword_seo_post,"edit")
</script>
@endsection
@endsection
