
@extends('admin-layouts.pages.discount-posts.index')
@section('element')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Danh sách bài viết</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-success" href="{{route('discount-posts.create')}}" ><i class="mdi mdi-plus-circle-outline"></i> Thêm</a>
                    </div>
                </div>
            </div><!--end card-header-->
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table" id="datatable_1">
                        <thead class="thead-light">
                          <tr>
                            <th>Tiêu đề bài viết</th>
                            <th>Hình ảnh</th>
                            <th>Mô tả</th>
                            <th>URL</th>
                            <th>Trạng thái</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                            @foreach ( $dataDiscountPost as $item )
                            <tr>
                                <td class="text">{{$item["name_post"]}}</td>
                                <td><img src="{{asset($item["image_post"])}}" alt="{{$item["image_post"] == null ? "Không tìm thấy ảnh" : asset($item["image_room"])}}" class="image-table rounded"></td>
                                <td class="text">{!! $item["content_post"] !!}</td>
                                <td ><a href="{{asset("bai-viet/" . $item["url_post"])}}">{{asset("bai-viet/" . $item["url_post"])}}</a></td>
                                <td>
                                    <a class="font-30" onclick="DiscountPost.changeStatus(this,{{$item['id']}})">
                                        <i class="{{$item["status"] == 0 ? "mdi mdi-play": "mdi mdi-pause"}}"></i>
                                    </a>
                                </td>
                                <td class="text-end">
                                    <div class="dropdown d-inline-block">
                                        <a class="dropdown-toggle arrow-none" id="dLabel11" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                            <i class="fas fa-ellipsis-h font-20 text-muted"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dLabel11">
                                            <a class="dropdown-item" href="{{route('discount-posts.show',$item['id'])}}"><i class="mdi mdi-information"></i> Xem chi tiết</a>
                                            <a class="dropdown-item" href="{{route('discount-posts.edit',$item['id'])}}"><i class="mdi mdi-square-edit-outline"></i> Cập nhật</a>
                                            <a class="dropdown-item" onclick="DiscountPost.remove(this,{{$item['id']}})" ><i class="mdi mdi-trash-can-outline" style="color:red;"></i> Xóa</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                      </table>
                </div>
            </div>
        </div>
    </div> <!-- end col -->
</div> <!-- end row -->


@section('scripts')
<script src="{{asset('admin/js/discount-posts/discount-posts.js')}}"></script>

@endsection
@endsection
