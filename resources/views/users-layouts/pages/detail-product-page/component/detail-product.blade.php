<!-- Shop details Area start -->
{{-- <section class="product-details-area mtb-60px">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-12">
                <div class="product-details-img product-details-tab">
                    <div class="zoompro-wrap zoompro-2">
                        <div class="zoompro-border zoompro-span">
                            <img class="zoompro" src="{{asset($dataDetailProduct["detail-product"]["image_product"][0]["url_image"])}}"
                            data-zoom-image="{{asset($dataDetailProduct["detail-product"]["image_product"][0]["url_image"])}}" alt="">
                        </div>
                    </div>
                    <div id="gallery" class="product-dec-slider-2 owl-carousel owl-nav-style owl-nav-style-2">
                        @foreach ($dataDetailProduct["detail-product"]["image_product"] as $key => $item )
                            <a class="{{ $key == 1 ? "active" : "" }}"
                            data-image="{{asset($item["url_image"])}}"
                            data-zoom-image="{{asset($item["url_image"])}}">
                                <img src="{{asset($item["url_image"])}}" alt="">
                            </a>
                        @endforeach
                    </div>

                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-12">
                <div class="product-details-content">
                    <h2 >{{$dataDetailProduct["detail-product"]["name_product"]}}</h2>
                    <p class="reference">Danh mục:
                        @foreach ($dataDetailProduct["detail-product"]["category_product"] as $key => $item)
                        <span> <a href="{{route('category.index',$item['url_category'])}}">{{$item["name_category"]}},</a></span>
                        @endforeach
                    </p>
                    <div class="pricing-meta">

                        <ul>
                            <li><h3 style="color: black">Giá : </h3></li>
                            @if ( $dataDetailProduct["detail-product"]["cost"] != null && $dataDetailProduct["detail-product"]["price"] != null )
                            <li class="old-price ">{{$dataDetailProduct["detail-product"]["cost"] . " VNĐ"}}</li>

                            <li class="current-price" style="font-size: 22px;
                            margin: 20px 0;"
                            >{{$dataDetailProduct["detail-product"]["price"] . " VNĐ"}}</li>
                            @else
                            <li class="current-price"
                            style="font-size: 22px;
                            margin: 20px 0;"
                            >
                            {{$dataDetailProduct["detail-product"]["cost"] == null ? "Liên hệ" : $dataDetailProduct["detail-product"]["cost"] . " VNĐ"}}
                            </li>
                            @endif
                        </ul>
                    </div>
                    <div class="pro-details-list">
                        <div class="compare-table table-responsive">
                            <table class="table mb-0">
                                <tbody>
                                    <tr>
                                        <td class="first-column">Thông tin bảo hành</td>
                                        <td >
                                            {!! $dataDetailProduct["detail-product"]["warranty"] !!}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="first-column">Thời gian bảo hành</td>
                                        <td >
                                            {!! $dataDetailProduct["detail-product"]["time_warranty"] !!}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="first-column">Sản phẩm</td>
                                        <td >
                                            {!! $dataDetailProduct["detail-product"]["element_product"] !!}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="first-column">Quà tặng</td>
                                        <td >
                                            {!! $dataDetailProduct["detail-product"]["gift"] !!}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="first-column">Lưu ý sử dụng</td>
                                        <td >
                                            {!! $dataDetailProduct["detail-product"]["note"] !!}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="pro-details-quality mt-0px">
                        <div class="cart-plus-minus">
                            <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1">
                        </div>
                        <div class="pro-details-cart btn-hover">
                            <a href="#"> + Thêm vào giỏ hàng</a>
                        </div>
                    </div>
                    <div class="pro-details-wish-com">
                        <div class="pro-details-wishlist">
                            <a href="#"><i class="ion-android-favorite-outline"></i>Thêm vào danh sách yêu thích</a>
                        </div>
                    </div>
                    <div class="pro-details-social-info">
                        <span>Share</span>
                        <div class="social-info">
                            <ul>
                                <li>
                                    <a href="#"><i class="ion-social-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="ion-social-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="ion-social-google"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="ion-social-instagram"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="pro-details-policy">
                        <ul>
                            <li><img src="{{asset('user/images/icons/policy.png')}}" alt=""><span>Chính sách bảo mật</span></li>
                            <li><img src="{{asset('user/images/icons/policy-2.png')}}" alt=""><span>Chính sách giao hàng</span></li>
                            <li><img src="{{asset('user/images/icons/policy-3.png')}}" alt=""><span>Chính sách hoàn trả</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> --}}
<!-- Shop details Area End -->
<!-- product details description area start -->
{{-- <div class="description-review-area mb-60px">
    <div class="container">
        <div class="description-review-wrapper">
            <div class="description-review-topbar nav">
                <a data-bs-toggle="tab" href="#des-details1">Mô tả</a>
                <a class="active" data-bs-toggle="tab" href="#des-details2">Thông tin kỹ thuật</a>
            </div>
            <div class="tab-content description-review-bottom">
                <div id="des-details2" class="tab-pane active">
                    <div class="product-anotherinfo-wrapper">
                        <ul>
                            {!! $dataDetailProduct["detail-product"]["specifications"] !!}
                        </ul>
                    </div>
                </div>
                <div id="des-details1" class="tab-pane">
                    <div class="product-description-wrapper">
                        {!! $dataDetailProduct["detail-product"]["description_product"] !!}

                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<!-- product details description area end -->



       <div class="row gx-60">
          <div class="col-lg-6">
             <div class="product-big-img">
                <div class="img"><img src="{{asset($dataDetailProduct["detail-product"]["image_product"][0]["url_image"])}}" alt="Product Image">

                    {{-- <div class="product-details-img product-details-tab">
                        <div class="zoompro-wrap zoompro-2">
                            <div class="zoompro-border zoompro-span">
                                <img class="zoompro" src="{{asset($dataDetailProduct["detail-product"]["image_product"][0]["url_image"])}}"
                                data-zoom-image="{{asset($dataDetailProduct["detail-product"]["image_product"][0]["url_image"])}}" alt="">
                            </div>
                        </div>
                        <div id="gallery" class="product-dec-slider-2 owl-carousel owl-nav-style owl-nav-style-2">
                            @foreach ($dataDetailProduct["detail-product"]["image_product"] as $key => $item )
                                <a class="{{ $key == 1 ? "active" : "" }}"
                                data-image="{{asset($item["url_image"])}}"
                                data-zoom-image="{{asset($item["url_image"])}}">
                                    <img src="{{asset($item["url_image"])}}" alt="">
                                </a>
                            @endforeach
                        </div>

                    </div> --}}

                </div>
             </div>
          </div>
          <div class="col-lg-6 align-self-center">
             <div class="product-about">
                @if ( $dataDetailProduct["detail-product"]["cost"] != null && $dataDetailProduct["detail-product"]["price"] != null )
                <span class="price">{{$dataDetailProduct["detail-product"]["cost"] . " VNĐ"}}<del>{{$dataDetailProduct["detail-product"]["price"] . " VNĐ"}}</del></span>
                @else
                <span class="price">{{$dataDetailProduct["detail-product"]["cost"] . " VNĐ"}}</span>
                @endif
                <h2 class="product-title">{{$dataDetailProduct["detail-product"]["name_product"]}}</h2>
                {{-- <div class="product-rating">
                   <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span></div>
                   <a href="shop-details.html" class="woocommerce-review-link">(<span class="count">4</span> customer reviews)</a>
                </div> --}}
                <p class="text">{!! $dataDetailProduct["detail-product"]["note"] !!}</p>


                <div class="product_meta">
                    <span>Danh Mục:
                        @foreach ($dataDetailProduct["detail-product"]["category_product"] as $key => $item)
                        <a href="{{route('category.index',$item['url_category'])}}">{{$item["name_category"]}}</a>
                        @endforeach
                    </span>

                </div>



             </div>
          </div>
       </div>
       <br><br>
       <!-- <ul class="nav product-tab-style1" id="productTab" role="tablist">
          <li class="nav-item" role="presentation"><a class="nav-link th-btn" id="description-tab" data-bs-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="false">Product Description</a></li>
          <li class="nav-item" role="presentation"><a class="nav-link th-btn active" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="true">Customer Reviews</a></li>
       </ul> -->
       <div class="tab-content" id="productTabContent">
        <div class="tab-pane fade show active" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
            {!! $dataDetailProduct["detail-product"]["description_product"] !!}
          </div>
            <div class="tab-pane fade" id="description" role="tabpanel" aria-labelledby="description-tab">
             <div class="woocommerce-Reviews">
                <div class="th-comments-wrap">
                   <ul class="comment-list">
                      <li class="review th-comment-item">
                         <div class="th-post-comment">
                            <div class="comment-avater"><img src="assets\img\blog\comment-author-1.jpg" alt="Comment Author"></div>
                            <div class="comment-content">
                               <h4 class="name">Adam Jhon</h4>
                               <span class="commented-on"><i class="far fa-calendar"></i>22 April, 2023</span>
                               <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span></div>
                               <p class="text">This product is very much qualityful and I love this working system and speed.</p>
                            </div>
                         </div>
                      </li>
                      <li class="review th-comment-item">
                         <div class="th-post-comment">
                            <div class="comment-avater"><img src="assets\img\blog\comment-author-2.jpg" alt="Comment Author"></div>
                            <div class="comment-content">
                               <h4 class="name">Jusctin Dacon</h4>
                               <span class="commented-on"><i class="far fa-calendar"></i>26 April, 2023</span>
                               <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span></div>
                               <p class="text">They delivered the product in a few time. Product quality is also very good.</p>
                            </div>
                         </div>
                      </li>
                      <li class="review th-comment-item">
                         <div class="th-post-comment">
                            <div class="comment-avater"><img src="assets\img\blog\comment-author-3.jpg" alt="Comment Author"></div>
                            <div class="comment-content">
                               <h4 class="name">Jacklin July</h4>
                               <span class="commented-on"><i class="far fa-calendar"></i>26 April, 2023</span>
                               <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span></div>
                               <p class="text">Their product and service is very satisfying. I highly recommend their services.</p>
                            </div>
                         </div>
                      </li>
                      <li class="review th-comment-item">
                         <div class="th-post-comment">
                            <div class="comment-avater"><img src="assets\img\blog\comment-author-4.jpg" alt="Comment Author"></div>
                            <div class="comment-content">
                               <h4 class="name">Adison Smith</h4>
                               <span class="commented-on"><i class="far fa-calendar"></i>26 April, 2023</span>
                               <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span></div>
                               <p class="text">I am just in love with this product. Their service is also very good you can also try.</p>
                            </div>
                         </div>
                      </li>
                   </ul>
                </div>
                <div class="th-comment-form">
                   <div class="form-title">
                      <h3 class="blog-inner-title">Add a review</h3>
                   </div>
                   <div class="row">
                      <div class="form-group rating-select d-flex align-items-center">
                         <label>Your Rating</label>
                         <p class="stars"><span><a class="star-1" href="#">1</a> <a class="star-2" href="#">2</a> <a class="star-3" href="#">3</a> <a class="star-4" href="#">4</a> <a class="star-5" href="#">5</a></span></p>
                      </div>
                      <div class="col-12 form-group"><textarea placeholder="Write a Message" class="form-control"></textarea> <i class="text-title far fa-pencil-alt"></i></div>
                      <div class="col-md-6 form-group"><input type="text" placeholder="Your Name" class="form-control"> <i class="text-title far fa-user"></i></div>
                      <div class="col-md-6 form-group"><input type="text" placeholder="Your Email" class="form-control"> <i class="text-title far fa-envelope"></i></div>
                      <div class="col-12 form-group"><input id="reviewcheck" name="reviewcheck" type="checkbox"> <label for="reviewcheck">Save my name, email, and website in this browser for the next time I comment.<span class="checkmark"></span></label></div>
                      <div class="col-12 form-group mb-0"><button class="th-btn">Post Review</button></div>
                   </div>
                </div>
             </div>
          </div>
       </div>



