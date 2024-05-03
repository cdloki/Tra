@extends('users-layouts.users-layouts.index')
@section('SEO')
{!! $dataDetailProduct["SEO"] !!}
@endsection
@section('content')
{{-- @dd(); --}}
<!-- Header End -->
<!-- Breadcrumb Area start -->
{{-- <div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
    <div class="container">
       <div class="breadcumb-content">
          <h1 class="breadcumb-title">{{$dataDetailProduct["detail-product"]["name_product"]}}</h1>
<ul class="breadcumb-menu">
      <li><a href="/">Trang chủ</a></li>
      <li>Sản phẩm</li>
      <li>{{$dataDetailProduct["detail-product"]["name_product"]}}</li>
</ul>
</div>
</div>
</div> --}}

<section class="product-details space-top space-extra-bottom">
      <div class="container">

            @includeIf('users-layouts.pages.detail-product-page.component.detail-product')
            @includeIf(checkComponent($dataDetailProduct["random-product"],'users-layouts.pages.detail-product-page.component.random-product'))

      </div>
</section>

@section('scripts')
{{-- <script >
    // let id_product = $("#id_product").val();
    renderSEO();
</script> --}}

@endsection
@endsection