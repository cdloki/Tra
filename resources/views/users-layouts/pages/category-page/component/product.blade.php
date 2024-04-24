<section class="space-top space-extra-bottom">
   <div class="container">
      <div class="th-sort-bar">
         <div class="row justify-content-between align-items-center">
            <div class="col-md">
               <p class="woocommerce-result-count">Có {{$dataCategory["total"]}} sản phẩm.</p>
            </div>
            <div class="col-md-auto">
               {{-- <form class="woocommerce-ordering" method="get">
                   <select name="orderby" class="orderby" aria-label="Shop order">
                      <option value="menu_order" selected="selected">Default Sorting</option>
                      <option value="popularity">Sort by popularity</option>
                      <option value="rating">Sort by average rating</option>
                      <option value="date">Sort by latest</option>
                      <option value="price">Sort by price: low to high</option>
                      <option value="price-desc">Sort by price: high to low</option>
                   </select>
                </form> --}}
            </div>
         </div>
      </div>
      <div class="row gy-40">

         @foreach ( $dataCategory["product"] as $key => $item )
         {{-- @dd($item) --}}
         <div class="col-xl-3 col-lg-4 col-sm-6">
            <div class="th-product product-grid">
               <a href="{{route('detail-product',$item['url_product'])}}">
                  <div class="product-img">
                     <img src="{{asset($item["image_product"])}}" alt="Product Image">
                     {{-- <span class="product-tag">Hot</span> --}}
                     <div class="actions">
                        {{-- <a href="{{route('detail-product',$item['url_product'])}}" class="icon-btn popup-content">
                        <i class="far fa-eye"></i>
               </a> --}}
               {{-- <a href="cart.html" class="icon-btn"><i class="far fa-cart-plus"></i>
                    </a>  --}}
               {{-- <a href="wishlist.html" class="icon-btn"><i class="far fa-heart"></i>
                    </a> --}}
            </div>
         </div>
         </a>
         <div class="product-content">
            {{-- <a href="{{route('detail-product',$item['url_product'])}}" class="product-category">Vegetables</a> --}}
            <h3 class="product-title">
               <a href="{{route('detail-product',$item['url_product'])}}">{{$item["name_product"]}}</a>
            </h3>

            @if ( $item["cost"] != null && $item["price"] != null )
            <span class="price">{{$item["cost"] . " VNĐ"}}<del>{{$item["price"] . " VNĐ"}}</del></span>
            @else
            <span class="price">{{$item["cost"] . " VNĐ"}}</span>
            @endif

            {{-- <div class="woocommerce-product-rating">
                     <span class="count">(120 Reviews)</span>
                     <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span></div>
                  </div> --}}
         </div>
      </div>
   </div>
   @endforeach
   </div>
   <div class="th-pagination text-center pt-50">
      {{ $dataCategory["product"]->links('users-layouts.pagination.pagination') }}
   </div>
   </div>
</section>