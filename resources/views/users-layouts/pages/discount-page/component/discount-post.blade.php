<section class="th-blog-wrapper space-top space-extra-bottom">
    <div class="container">
        <div class="row">
            <div class="col-xxl-8 col-lg-7">

                @foreach ( $dataDiscount["discount"] as $key => $item)


                <div class="th-blog blog-single has-post-thumbnail">
                    <div class="blog-img"><a href="{{route('discount-post.show',$item['url_post'])}}"><img
                                src="{{asset($item["image_post"])}}" alt="Blog Image"></a></div>
                    <div class="blog-content">
                        <div class="blog-meta"><a class="author"><i class="far fa-user"></i>Admin</a> <a><i
                                    class="far fa-calendar"></i>{{$item["created_at"]}}</a>
                        </div>
                        <h2 class="blog-title"><a
                                href="{{route('discount-post.show',$item['url_post'])}}">{{$item["name_post"]}}</a></h2>
                        <p class="blog-text">
                        <div class="text">
                            <p>
                                {!! $item["content_post"] !!}
                            </p>
                        </div>
                        </p>
                        <a href="{{route('discount-post.show',$item['url_post'])}}" class="th-btn btn-sm">Xem thêm<i
                                class="fas fa-chevrons-right ms-2"></i></a>
                    </div>
                </div>
                @endforeach



                <div class="th-pagination text-center">
                    {{ $dataDiscount["discount"]->withQueryString()->links('users-layouts.pagination.pagination') }}

                </div>
            </div>
            <div class="col-xxl-4 col-lg-5">
                <aside class="sidebar-area">

                    <div class="widget widget_search">
                        <form action="{{route('discount-post')}}" method="GET" class="search-form">
                            <input placeholder="Nhập từ khóa mà bạn muốn tìm ..." type="text" name="keyword"
                                value="{{$dataDiscount["filter"]}}" autocomplete="off">
                            <button type="submit"><i class="far fa-search"></i></button>
                        </form>
                        {{-- <form class="search-form"><input type="text" placeholder="Enter Keyword"> <button type="submit"><i class="far fa-search"></i></button></form> --}}
                    </div>

                    {{-- <div class="widget widget_categories">
                   <h3 class="widget_title">Categories</h3>
                   <ul>
                      <li><a href="blog.html">Agriculture</a> <span>(8)</span></li>
                      <li><a href="blog.html">Bread & Bakery</a> <span>(10)</span></li>
                      <li><a href="blog.html">Dairy Milk</a> <span>(12)</span></li>
                      <li><a href="blog.html">Organic Foods</a> <span>(6)</span></li>
                      <li><a href="blog.html">Fresh Vegetable</a> <span>(8)</span></li>
                      <li><a href="blog.html">Fresh Fruits</a> <span>(11)</span></li>
                   </ul>
                </div> --}}
                    <div class="widget">
                        <h3 class="widget_title">Bài viết khác</h3>
                        <div class="recent-post-wrap">
                            @foreach ( $dataDiscount["discount-new"] as $key => $item)
                            <div class="recent-post">
                                <div class="media-img"><a href="{{route('discount-post.show',$item['url_post'])}}"><img
                                            src="{{asset($item["image_post"])}}" alt="Blog Image"></a></div>
                                <div class="media-body">
                                    <h4 class="post-title"><a class="text-inherit"
                                            href="blog-details.html">{{$item["name_post"]}}</a></h4>
                                    <div class="recent-post-meta"><a href="blog.html"><i
                                                class="far fa-calendar"></i>{{$item["created_at"]}}</a></div>
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>

                </aside>
            </div>
        </div>
    </div>
</section>