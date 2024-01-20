@extends('admin-layouts.admin-layouts.index')
@section('content')
<!-- Page-Title -->
<div class="row">
    <div class="col-sm-12">
        <div class="page-title-box">
            <div class="float-end">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Quản trị</a>
                    </li><!--end nav-item-->
                    <li class="breadcrumb-item active">Thay đổi mật khẩu</li>
                </ol>
            </div>
            <h4 class="page-title">Thay đổi mật khẩu</h4>
        </div><!--end page-title-box-->
    </div><!--end col-->
</div>


<!-- Add element-->
@yield('element')
<!-- Add scripts-->

@section('add-scripts')
@yield('scripts')
@endsection


@endsection
