

 {{-- {{-- <section class="space"> --}}
    <section class="space">
        <div class="container">
            <div class="row justify-content-lg-between justify-content-center align-items-end">
                <div class="col-lg">
                    <div class="title-area text-center text-lg-start"><span class="sub-title"><img
                                src="{{asset('user\img\theme-img\title_icon.svg')}}" alt="Icon">Sản phẩm</span>
                        <h2 class="sec-title">Sản phẩm của chúng tôi</h2>
                    </div>
                </div>
                <div class="col-lg-auto d-none d-lg-block">
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


                @foreach ( $dataHome["product"] as $key => $item )
                <div class="swiper-slide">
                    <div class="th-product product-grid">
                        <div class="product-img"><img src="{{asset($item["image_product"]["url_image"])}}" alt="Product Image">
                            {{-- <span class="product-tag">Hot</span> --}}
                            <div class="actions">
                                <a href="#QuickView" class="icon-btn popup-content"><i
                                        class="far fa-eye"></i></a>
                                {{-- <a href="cart.html" class="icon-btn"><i
                                        class="far fa-cart-plus"></i></a>
                                <a href="wishlist.html"
                                    class="icon-btn"><i class="far fa-heart"></i></a> --}}
                            </div>
                        </div>
                        <div class="product-content">
                            {{-- <a href="{{route('detail-product',$item['url_product'])}}" class="product-category">Fresh
                                Meat</a> --}}
                            <h3 class="product-title"><a href="{{route('detail-product',$item['url_product'])}}">{{$item["name_product"]}}</a></h3>

                            @if ( $item["cost"] != null && $item["price"] != null )
                                <span class="price">{{$item["cost"] . " VNĐ"}}<del>{{$item["price"] . " VNĐ"}}</del></span>
                            @else
                                <span class="price">{{$item["cost"] . " VNĐ"}}</span>
                            @endif


                            {{-- <div class="woocommerce-product-rating"><span class="count">(120 Reviews)</span>
                                <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span>Rated
                                        <strong class="rating">5.00</strong> out of 5 based on <span
                                            class="rating">1</span> customer rating</span></div>
                            </div> --}}
                        </div>
                    </div>
                </div>
                @endforeach


                </div>
            </div>
            <div class="d-block d-lg-none mt-40 text-center">
                <div class="icon-box"><button data-slider-prev="#productSlider1" class="slider-arrow default"><i
                            class="far fa-arrow-left"></i></button> <button data-slider-next="#productSlider1"
                        class="slider-arrow default"><i class="far fa-arrow-right"></i></button></div>
            </div>
        </div>
    </section>



