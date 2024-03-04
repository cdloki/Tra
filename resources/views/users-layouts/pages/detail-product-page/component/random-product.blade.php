<div class="space-extra-top mb-30">
    <div class="row justify-content-between align-items-center">
        <div class="col-md-auto">
            <h2 class="sec-title text-center">Các sản phẩm khác</h2>
        </div>
        <div class="col-md d-none d-sm-block">
            <hr class="title-line">
        </div>
        <div class="col-md-auto d-none d-md-block">
            <div class="sec-btn">
                <div class="icon-box"><button data-slider-prev="#productSlider1" class="slider-arrow default"><i
                            class="far fa-arrow-left"></i></button> <button data-slider-next="#productSlider1"
                        class="slider-arrow default"><i class="far fa-arrow-right"></i></button></div>
            </div>
        </div>
    </div>
    <div class="swiper th-slider has-shadow" id="productSlider1"
        data-slider-options='{"breakpoints":{"0":{"slidesPerView":1},"576":{"slidesPerView":"2"},"768":{"slidesPerView":"2"},"992":{"slidesPerView":"3"},"1200":{"slidesPerView":"4"}}}'>
        <div class="swiper-wrapper">

            @foreach ( $dataDetailProduct["random-product"] as $key => $item)
            <div class="swiper-slide">
                <div class="th-product product-grid">
                    <div class="product-img">
                        <img src="{{asset($item["image_product"]["url_image"])}}" alt="Product Image">

                    </div>

                    <div class="product-content">
                        <h3 class="product-title"><a
                                href="{{route('detail-product',$item['url_product'])}}">{{$item["name_product"]}}</a>
                        </h3>

                        @if ( $dataDetailProduct["detail-product"]["cost"] != null &&
                        $dataDetailProduct["detail-product"]["price"] != null )
                        <span
                            class="price">{{$dataDetailProduct["detail-product"]["cost"] . " VNĐ"}}<del>{{$dataDetailProduct["detail-product"]["price"] . " VNĐ"}}</del></span>
                        @else
                        <span class="price">{{$dataDetailProduct["detail-product"]["cost"] . " VNĐ"}}</span>
                        @endif
                    </div>
                </div>
            </div>



        <!-- Single Item -->
        @endforeach
        </div>


    </div>
</div>
<div class="d-block d-md-none mt-40 text-center">
    <div class="icon-box"><button data-slider-prev="#productSlider1" class="slider-arrow default"><i
                class="far fa-arrow-left"></i></button> <button data-slider-next="#productSlider1"
            class="slider-arrow default"><i class="far fa-arrow-right"></i></button></div>
</div>
</div>
