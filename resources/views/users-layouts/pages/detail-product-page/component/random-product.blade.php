
<div class="space-extra-top mb-30">
    <div class="row justify-content-between align-items-center">
       <div class="col-md-auto">
          <h2 class="sec-title text-center">Related Products</h2>
       </div>
       <div class="col-md d-none d-sm-block">
          <hr class="title-line">
       </div>
       <div class="col-md-auto d-none d-md-block">
          <div class="sec-btn">
             <div class="icon-box"><button data-slider-prev="#productSlider1" class="slider-arrow default"><i class="far fa-arrow-left"></i></button> <button data-slider-next="#productSlider1" class="slider-arrow default"><i class="far fa-arrow-right"></i></button></div>
          </div>
       </div>
    </div>
    <div class="swiper th-slider has-shadow" id="productSlider1" data-slider-options='{"breakpoints":{"0":{"slidesPerView":1},"576":{"slidesPerView":"2"},"768":{"slidesPerView":"2"},"992":{"slidesPerView":"3"},"1200":{"slidesPerView":"4"}}}'>
       <div class="swiper-wrapper">

        @foreach ( $dataDetailProduct["random-product"] as $key => $item)
        <div class="swiper-slide">
            <div class="th-product product-grid">
               <div class="product-img">
                  <img src="{{asset($item["image_product"]["url_image"])}}" alt="Product Image">
                  {{-- <span class="product-tag">Hot</span> --}}
                  <div class="actions"><a href="{{route('detail-product',$item['url_product'])}}" class="icon-btn popup-content"><i class="far fa-eye"></i></a>
                    {{-- <a href="cart.html" class="icon-btn"><i class="far fa-cart-plus"></i></a>
                    <a href="wishlist.html" class="icon-btn"><i class="far fa-heart"></i></a> --}}
                </div>
               </div>
               <div class="product-content">
                  {{-- <a href="shop-details.html" class="product-category">Fresh Meat</a> --}}
                  <h3 class="product-title"><a href="{{route('detail-product',$item['url_product'])}}">{{$item["name_product"]}}</a></h3>

                  @if ( $dataDetailProduct["detail-product"]["cost"] != null && $dataDetailProduct["detail-product"]["price"] != null )
                  <span class="price">{{$dataDetailProduct["detail-product"]["cost"] . " VNĐ"}}<del>{{$dataDetailProduct["detail-product"]["price"] . " VNĐ"}}</del></span>
                  @else
                  <span class="price">{{$dataDetailProduct["detail-product"]["cost"] . " VNĐ"}}</span>
                  @endif

                  {{-- <div class="woocommerce-product-rating">
                     <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span></div>
                  </div> --}}
               </div>
            </div>
         </div>



        <!-- Single Item -->
        @endforeach


       </div>
    </div>
    <div class="d-block d-md-none mt-40 text-center">
       <div class="icon-box"><button data-slider-prev="#productSlider1" class="slider-arrow default"><i class="far fa-arrow-left"></i></button> <button data-slider-next="#productSlider1" class="slider-arrow default"><i class="far fa-arrow-right"></i></button></div>
    </div>
 </div>

