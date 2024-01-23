@extends('users-layouts.users-layouts.index')
@section('SEO')
    {!! $dataDiscount["SEO"]  !!}
@endsection
@section('content')

<!-- Header End -->
<!-- Breadcrumb Area start -->
<div class="breadcumb-wrapper" data-bg-src="{{asset('user/img/bg/bg_blog.jpg')}}">
    <div class="container">
       <div class="breadcumb-content">
          <h1 class="breadcumb-title">Bài viết</h1>
          <ul class="breadcumb-menu">
             <li><a href="/">Trang chủ</a></li>
             <li>Bài viết</li>
          </ul>
       </div>
    </div>
</div>
<!-- Breadcrumb Area End -->
@include('users-layouts.pages.discount-page.component.discount-post')
{{--@include('users-layouts.pages.detail-product-page.component.random-product') --}}





@section('add-scripts')


@endsection
@endsection
