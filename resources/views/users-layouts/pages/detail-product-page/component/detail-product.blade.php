       <div class="row gx-60">

           <div class="col-lg-6">
               <div id="productCarousel" class="carousel slide" data-bs-ride="carousel">
                   <div class="carousel-inner">
                       <div class="carousel-item active">
                           <img src="{{asset('user\img\gallery\gallery_1_1.jpg')}}" class="d-block w-100"
                               alt="image-slider-1" />
                       </div>
                       <div class="carousel-item">
                           <img src="{{asset('user\img\gallery\gallery_1_2.jpg')}}" class="d-block w-100"
                               alt="image-slider-2" />
                       </div>
                   </div>
                   <button class="carousel-control-prev" type="button" data-bs-target="#productCarousel"
                       data-bs-slide="prev">
                       <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                   </button>
                   <button class="carousel-control-next" type="button" data-bs-target="#productCarousel"
                       data-bs-slide="next">
                       <span class="carousel-control-next-icon" aria-hidden="true"></span>
                   </button>
               </div>
           </div>

           <!-- <div class="col-lg-6">
               <div class="product-big-img">
                   <div class="img"><img
                           src="{{asset($dataDetailProduct["detail-product"]["image_product"][0]["url_image"])}}"
                           alt="Product Image">
                   </div>
               </div>
           </div> -->
           <div class="col-lg-6 align-self-center">
               <div class="product-about">
                   @if ( $dataDetailProduct["detail-product"]["cost"] != null &&
                   $dataDetailProduct["detail-product"]["price"] != null )
                   <span
                       class="price">{{$dataDetailProduct["detail-product"]["cost"] . " VNĐ"}}<del>{{$dataDetailProduct["detail-product"]["price"] . " VNĐ"}}</del></span>
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
                   <div class="product_meta">
                       <span>Link Shoppe <img width="25" src="{{asset('user/img/icon/icon_shopee_32.png')}}" alt=""
                               style="margin-bottom: 4px">:

                           <a href="{{$item["shopee_url"]}}">
                               {{$item["shopee_url"]}}
                           </a>
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
                                   <div class="comment-avater"><img src="assets\img\blog\comment-author-1.jpg"
                                           alt="Comment Author"></div>
                                   <div class="comment-content">
                                       <h4 class="name">Adam Jhon</h4>
                                       <span class="commented-on"><i class="far fa-calendar"></i>22 April, 2023</span>
                                       <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span
                                               style="width:100%">Rated <strong class="rating">5.00</strong> out of 5
                                               based on <span class="rating">1</span> customer rating</span></div>
                                       <p class="text">This product is very much qualityful and I love this working
                                           system and speed.</p>
                                   </div>
                               </div>
                           </li>
                           <li class="review th-comment-item">
                               <div class="th-post-comment">
                                   <div class="comment-avater"><img src="assets\img\blog\comment-author-2.jpg"
                                           alt="Comment Author"></div>
                                   <div class="comment-content">
                                       <h4 class="name">Jusctin Dacon</h4>
                                       <span class="commented-on"><i class="far fa-calendar"></i>26 April, 2023</span>
                                       <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span
                                               style="width:100%">Rated <strong class="rating">5.00</strong> out of 5
                                               based on <span class="rating">1</span> customer rating</span></div>
                                       <p class="text">They delivered the product in a few time. Product quality is also
                                           very good.</p>
                                   </div>
                               </div>
                           </li>
                           <li class="review th-comment-item">
                               <div class="th-post-comment">
                                   <div class="comment-avater"><img src="assets\img\blog\comment-author-3.jpg"
                                           alt="Comment Author"></div>
                                   <div class="comment-content">
                                       <h4 class="name">Jacklin July</h4>
                                       <span class="commented-on"><i class="far fa-calendar"></i>26 April, 2023</span>
                                       <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span
                                               style="width:100%">Rated <strong class="rating">5.00</strong> out of 5
                                               based on <span class="rating">1</span> customer rating</span></div>
                                       <p class="text">Their product and service is very satisfying. I highly recommend
                                           their services.</p>
                                   </div>
                               </div>
                           </li>
                           <li class="review th-comment-item">
                               <div class="th-post-comment">
                                   <div class="comment-avater"><img src="assets\img\blog\comment-author-4.jpg"
                                           alt="Comment Author"></div>
                                   <div class="comment-content">
                                       <h4 class="name">Adison Smith</h4>
                                       <span class="commented-on"><i class="far fa-calendar"></i>26 April, 2023</span>
                                       <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span
                                               style="width:100%">Rated <strong class="rating">5.00</strong> out of 5
                                               based on <span class="rating">1</span> customer rating</span></div>
                                       <p class="text">I am just in love with this product. Their service is also very
                                           good you can also try.</p>
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
                               <p class="stars"><span><a class="star-1" href="#">1</a> <a class="star-2" href="#">2</a>
                                       <a class="star-3" href="#">3</a> <a class="star-4" href="#">4</a> <a
                                           class="star-5" href="#">5</a></span></p>
                           </div>
                           <div class="col-12 form-group"><textarea placeholder="Write a Message"
                                   class="form-control"></textarea> <i class="text-title far fa-pencil-alt"></i></div>
                           <div class="col-md-6 form-group"><input type="text" placeholder="Your Name"
                                   class="form-control"> <i class="text-title far fa-user"></i></div>
                           <div class="col-md-6 form-group"><input type="text" placeholder="Your Email"
                                   class="form-control"> <i class="text-title far fa-envelope"></i></div>
                           <div class="col-12 form-group"><input id="reviewcheck" name="reviewcheck" type="checkbox">
                               <label for="reviewcheck">Save my name, email, and website in this browser for the next
                                   time I comment.<span class="checkmark"></span></label>
                           </div>
                           <div class="col-12 form-group mb-0"><button class="th-btn">Post Review</button></div>
                       </div>
                   </div>
               </div>
           </div>
       </div>