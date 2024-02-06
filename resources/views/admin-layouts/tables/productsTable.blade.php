
@extends('admin-layouts.pages.products.index')
@section('element')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">
                        <h4 class="card-title">Danh sách sản phẩm</h4>
                    </div>
                    <div class="col-6" style="text-align: right">
                        <a class="btn btn-success" href="{{route('products.create')}}" ><i class="mdi mdi-plus-circle-outline"></i> Thêm</a>
                    </div>
                </div>
            </div><!--end card-header-->
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table" id="datatable_1">
                        <thead class="thead-light">
                          <tr>
                            <th>Thông tin sản phẩm</th>
                            <th>Danh mục</th>
                            {{-- <th>Thời gian bảo hành</th> --}}
                            <th>Giá gốc</th>
                            <th>Giá bán</th>
                            <th>Trạng thái</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                            @foreach ( $dataProduct as $item )
                            <tr>
                                <td>
                                    <img src="{{$item["dataImage"] != null ? asset($item["dataImage"][0]["url_image"]) : ""}}" alt="" height="40">
                                    <p class="d-inline-block align-middle mb-0">
                                        <a href="{{route('detail-product',$item['url_product'])}}" target="_blank" class="d-inline-block align-middle mb-0 product-name fw-semibold">{{$item["name_product"]}}</a>
                                        <br>
                                        <span class="text-muted font-13 fw-semibold">{{$item["code_product"]}}</span>
                                    </p>
                                </td>
                                <td>
                                    @foreach($item["dataCategory"] as $key => $value)
                                    <span class="text-muted font-13 fw-semibold">{{$value["name_category"]}}</span>
                                    <br>
                                    @endforeach
                                </td>
                                {{-- <td>{{$item["time_warranty"]}}</td> --}}
                                <td>{{$item["cost"] == null ? "Liên hệ" : $item["cost"]}}</td>

                                <td>{{$item["price"] == null ? "Liên hệ" : $item["price"]}}</td>

                                <td>
                                    <a class="font-30" onclick="Product.changeStatus(this,{{$item['id']}})">
                                        <i class="{{$item["status"] == 0 ? "mdi mdi-play": "mdi mdi-pause"}}"></i>
                                    </a>
                                </td>
                                <td class="text-end">
                                    <div class="dropdown d-inline-block">
                                        <a class="dropdown-toggle arrow-none" id="dLabel11" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                            <i class="fas fa-ellipsis-h font-20 text-muted"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dLabel11">
                                            <a class="dropdown-item" href="{{route('products.show',$item['id'])}}"><i class="mdi mdi-information"></i> Xem chi tiết</a>
                                            <a class="dropdown-item" href="{{route('products.edit',$item['id'])}}"><i class="mdi mdi-square-edit-outline"></i> Cập nhật</a>
                                            <a class="dropdown-item" onclick="Product.remove(this,{{$item['id']}})" ><i class="mdi mdi-trash-can-outline" style="color:red;"></i> Xóa</a>
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
<script src="{{asset('admin/js/product/product.js')}}"></script>

@endsection
@endsection
