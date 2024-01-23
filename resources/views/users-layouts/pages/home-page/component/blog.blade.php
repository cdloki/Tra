<!-- Blog Area End -->

<section class="space" id="blog-sec">
    <div class="container">
        <div class="title-area text-center"><span class="sub-title"><img src="{{asset('user\img\theme-img\title_icon.svg')}}"
                    alt="shape">Bài viết</span>
            <h2 class="sec-title">Bài viết mới nhất</h2>
        </div>
        <div class="slider-area">
            <div class="swiper th-slider has-shadow" id="blogSlider1"
                data-slider-options='{"breakpoints":{"0":{"slidesPerView":1},"576":{"slidesPerView":"1"},"768":{"slidesPerView":"2"},"992":{"slidesPerView":"2"},"1200":{"slidesPerView":"3"}}}'>
                <div class="swiper-wrapper">


                    @foreach ($dataHome["blog"] as $key => $item )

                    <div class="swiper-slide">
                        <div class="blog-card">
                            <div class="blog-img"><img src="{{asset($item["image_post"])}}" alt="blog image"></div>
                            <div class="blog-content">
                                <div class="blog-meta"><a href="{{route('discount-post.show',$item['url_post'])}}"><i class="far fa-user"></i>By Admin</a>
                                    <a href="{{route('discount-post.show',$item['url_post'])}}"><i class="far fa-calendar"></i>{{$item["updated_at"]}}</a></div>
                                <h3 class="box-title"><a href="{{route('discount-post.show',$item['url_post'])}}">{{$item["name_post"]}}</a></h3><a href="{{route('discount-post.show',$item['url_post'])}}"
                                    class="th-btn btn-sm style4">Xem thêm<i
                                        class="fas fa-chevrons-right ms-2"></i></a>
                            </div>
                        </div>
                    </div>

                    @endforeach
                </div>
            </div><button data-slider-prev="#blogSlider1" class="slider-arrow slider-prev"><i
                    class="far fa-arrow-left"></i></button> <button data-slider-next="#blogSlider1"
                class="slider-arrow slider-next"><i class="far fa-arrow-right"></i></button>
        </div>
    </div>
</section>
