@extends('users-layouts.users-layouts.index')
@section('SEO')
{!! $dataPost["SEO"] !!}
@endsection
@section('content')

<!-- Breadcrumb Area start -->
<div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
    <div class="container">
       <div class="breadcumb-content">
          <h1 class="breadcumb-title">Giới thiệu</h1>
          <ul class="breadcumb-menu">
             <li><a href="/">Trang chủ</a></li>
             <li>Giới thiệu</li>
          </ul>
       </div>
    </div>
</div>
<!-- Breadcrumb Area End -->
<!-- contact area start -->
<div class="contact-area">
    <div class="container">
        <div>
            <div class="col-lg-12 col-md-12">
                <div class="contact-form">
                    {{-- @dd($dataPost["contact"]) --}}
                    {!! $dataPost["about"]["description_post"] !!}

                </div>
            </div>
        </div>
    </div>
</div>
<!-- contact area end -->




















@section('add-scripts')

{{-- <script >
    renderSEO("post",1);
</script> --}}
@endsection
@endsection
