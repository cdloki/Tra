<!-- Blog area Start -->
{{-- @dd($dataHome["blog"]) --}}
<section class="overflow-hidden space bg-smoke2" id="blog-sec">
    <div class="shape-mockup" data-top="0" data-left="0"><img src="{{asset('user\img\shape\vector_shape_1.png')}}" alt="shape">
    </div>
    <div class="shape-mockup" data-bottom="0" data-right="0"><img src="{{asset('user\img\shape\vector_shape_2.png')}}"
            alt="shape"></div>
    <div class="container">
        <div class="row justify-content-lg-between justify-content-center align-items-end">
            <div class="col-lg">
                <div class="title-area text-center text-lg-start"><span class="sub-title"><img
                            src="{{asset('user\img\theme-img\title_icon.svg')}}" alt="Icon">Bài viết</span>
                    <h2 class="sec-title">Bài viết</h2>
                </div>
            </div>
            <div class="col-lg-auto d-none d-lg-block">
                <div class="sec-btn"><a href="blog.html" class="th-btn">Xem thêm bài viết<i
                            class="fas fa-chevrons-right ms-2"></i></a></div>
            </div>
        </div>
        <div class="row gy-4">

            @foreach ($dataHome["blog"] as $key => $item )
            <div class="col-xl-6">
                <div class="blog-box">
                    <div class="blog-img"><img src="{{asset($item["image_post"])}}" alt="blog image"></div>
                    <div class="blog-content">
                        <div class="blog-meta"><a href="{{route('discount-post.show',$item['url_post'])}}"><i class="far fa-user"></i>Admin</a> <a
                                href="{{route('discount-post.show',$item['url_post'])}}"><i class="far fa-calendar"></i>{{$item["updated_at"]}}</a></div>
                        <h3 class="box-title"><a href="{{route('discount-post.show',$item['url_post'])}}">{{$item["name_post"]}}</a></h3>
                        <p class="box-text"><div class="text">
                            {!! $item["content_post"] !!}
                        </div>
                        </p><a href="{{route('discount-post.show',$item['url_post'])}}" class="th-btn">Xem thêm<i
                                class="fas fa-chevrons-right ms-2"></i></a>
                    </div>
                </div>
            </div>
            @endforeach


        </div>
    </div>
</section>

<!-- Blog Area End -->
