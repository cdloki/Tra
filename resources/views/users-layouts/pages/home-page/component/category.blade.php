<!-- Category Area Start -->
<style>
    .category-card .custom-category {
        border-radius: 50% !important;
    }
</style>

<section class="space-top">
    <div class="container">
        <div class="title-area text-center"><span class="sub-title"><img src="{{asset('user\img\theme-img\title_icon.svg')}}" alt="Icon">Danh mục sản phẩm</span>
            <h2 class="sec-title">Danh mục sản phẩm</h2>
        </div>
        <div class="swiper th-slider" data-slider-options='{"breakpoints":{"0":{"slidesPerView":1},"400":{"slidesPerView":"2"},"768":{"slidesPerView":"3"},"992":{"slidesPerView":"4"},"1200":{"slidesPerView":"5"}}}'>
            <div class="swiper-wrapper">

                @foreach ( $dataHome["category"] as $key => $item )


                <!-- Single item -->
                <div class="swiper-slide" >
                    <div class="category-card">
                        <a href="{{route('category.index',$item['url_category'])}}">
                            <div class="box-shape" data-bg-src="" style="background-image:  url('/user/img/bg/category_card_bg.png') "></div>
                            <div class="box-icon custom-category" style="background-image: url({{asset($item["image_category"])}}); background-size: cover;">
                                <!-- <img
                            src="{{asset($item["image_category"])}}" alt="Image"> -->
                            </div>
                        </a>
                        <h3 class="box-title"><a href="{{route('category.index',$item['url_category'])}}">{{$item["name_category"]}}</a>
                        </h3>
                        <p class="box-subtitle">Sản phẩm ({{$item["total_product"]}})</p>
                    </div>
                </div>
                <!-- Single item -->

                @endforeach

            </div>
        </div>
    </div>
</section>


{{-- <section class="categorie-area categorie-area-2 ptb-100px">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <!-- Section Title -->
                <div class="section-title mt-res-sx-30px mt-res-md-30px underline-shape">
                    <h2>Danh Mục Phổ Biến</h2>
                    <p>Danh mục Phổ biến được cập nhật vào hàng tuần</p>
                </div>
                <!-- Section Title -->
            </div>
        </div>
        <!-- Category Slider Start -->
        <div class="category-slider-2 owl-carousel owl-nav-style-3">

            @foreach ( $dataHome["category"] as $key => $item )


            <!-- Single item -->
            <div class="category-item">
                <div class="category-list">
                    <div class="category-thumb">
                        <a href="{{route('category.index',$item['url_category'])}}">
<img class="image" src="{{asset($item["image_category"])}}" alt="">
</a>
</div>
<div class="desc-listcategoreis">
    <div class="name_categories">
        <h4>{{$item["name_category"]}}</h4>
    </div>
    <span class="number_product">Có {{$item["total_product"]}} Sản phẩm</span>
    <a href="{{route('category.index',$item['url_category'])}}"> Xem thêm <i class="ion-android-arrow-dropright-circle"></i></a>
</div>
</div>
</div>
<!-- Single item -->

@endforeach
</div>
</div>
</section> --}}
<!-- Category Area End  -->