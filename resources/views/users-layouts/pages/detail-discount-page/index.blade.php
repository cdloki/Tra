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
          <h1 class="breadcumb-title">{{$dataDiscount["discount"]["name_post"]}}</h1>
          <ul class="breadcumb-menu">
             <li><a href="/">Trang chủ</a></li>
             <li>Bài viết</li>
            <li>{{$dataDiscount["discount"]["name_post"]}}</li>
          </ul>
       </div>
    </div>
</div>
<!-- Breadcrumb Area End -->

@if ( !empty($dataDiscount["discount"]))
@include('users-layouts.pages.detail-discount-page.component.detail-discount-post')
<input type="hidden" value="{{$dataDiscount["discount"]["id"]}}" id="id_post">
@endif

{{-- @include('users-layouts.pages.detail-discount-page.component.random-discount-post') --}}

@section('add-scripts')

{{-- <script >
    let id_post = $("#id_post").val();
    renderSEO("post",3,id_post);
</script> --}}

@endsection
@endsection
