@extends('users-layouts.users-layouts.index')
@section('SEO')
    {!! $dataDiscount["SEO"]  !!}
@endsection
@section('content')
<!-- Header End -->
<!-- Breadcrumb Area start -->
<section class="breadcrumb-area">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="breadcrumb-content">
               <h1 class="breadcrumb-hrading">Khuyến mãi</h1>
               <ul class="breadcrumb-links">
                  <li><a href="index.html">Trang chủ</a></li>
                  <li><a >Bài viết</a></li>
                  <li><a >Khuyến mãi</a></li>
                  <li>Chi tiết Khuyến mãi</li>
               </ul>
            </div>
         </div>
      </div>
   </div>
</section>
<div class="shop-category-area single-blog">
    <div class="container">
        <div class="row">
<!-- Breadcrumb Area End -->

@if ( !empty($dataDiscount["discount"]))
@include('users-layouts.pages.detail-discount-page.component.detail-discount-post')
<input type="hidden" value="{{$dataDiscount["discount"]["id"]}}" id="id_post">
@endif

@include('users-layouts.pages.detail-discount-page.component.random-discount-post')
        </div>
    </div>
</div>
</div>
@section('add-scripts')

{{-- <script >
    let id_post = $("#id_post").val();
    renderSEO("post",3,id_post);
</script> --}}

@endsection
@endsection
