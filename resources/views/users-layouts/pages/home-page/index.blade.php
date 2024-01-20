@extends('users-layouts.users-layouts.index')
@section('SEO')
    {!! $dataHome["SEO"]  !!}
@endsection


@section('content')
<!-- Silider -->
@includeIf(checkComponent($dataHome["slider"],'users-layouts.pages.home-page.component.slider'))

<!-- EndSilider -->
<!-- Danh mục -->
@includeIf(checkComponent($dataHome["category"],'users-layouts.pages.home-page.component.category'))
<!-- End danh mục -->
<!-- Sản phẩm -->
@includeIf(checkComponent($dataHome["product"],'users-layouts.pages.home-page.component.product'))

<!-- End sản phẩm -->
<!-- Banner -->
{{-- @includeIf(checkComponent($dataHome["banner"],'users-layouts.pages.home-page.component.banner')) --}}

<!-- End Banner -->
<!-- Bài viết -->

@includeIf(checkComponent($dataHome["blog"],'users-layouts.pages.home-page.component.blog'))

@section('add-scripts')


@endsection
@endsection
