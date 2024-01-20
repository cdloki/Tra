@extends('admin-layouts.admin-layouts.index')
@section('content')
<!-- Page-Title -->
<div class="row">
    <div class="col-sm-12">
        <div class="page-title-box">
            <div class="float-end">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Cấu hình chung</a>
                    </li><!--end nav-item-->
                    <li class="breadcrumb-item active">Cấu hình Slider</li>
                </ol>
            </div>
            <h4 class="page-title">Cấu hình Slider</h4>
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
