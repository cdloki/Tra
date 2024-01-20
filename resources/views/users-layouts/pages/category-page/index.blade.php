@extends('users-layouts.users-layouts.index')
@section('SEO')
    {!! $dataCategory["SEO"]  !!}
@endsection
@section('content')
{{-- @dd($dataCategory["category"]) --}}
<div class="breadcumb-wrapper" data-bg-src="{{asset($dataCategory["category"]["image_category"])}}">
    <div class="container">
       <div class="breadcumb-content">
          <h1 class="breadcumb-title">{{$dataCategory["category"]["name_category"]}}</h1>
          <ul class="breadcumb-menu">
             <li><a href="/">Trang chủ</a></li>
             <li>Danh mục</li>
            <li>{{$dataCategory["category"]["name_category"]}}</li>
          </ul>
       </div>
    </div>
</div>

<!-- Breadcrumb Area End -->
{{-- {{-- @include('users-layouts.pages.detail-product-page.component.detail-product') --}}
<input type="hidden" value="{{$dataCategory["category"]["id"]}}" id="id_category">
@include('users-layouts.pages.category-page.component.product')


@section('add-scripts')
{{-- <script >
    let id_category = $("#id_category").val();
    renderSEO("category", null, id_category);
</script> --}}

@endsection
@endsection
