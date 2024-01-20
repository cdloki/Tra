




<!-- Slider Arae Start -->
{{-- <div class="slider-area">
    <div class="slider-active-3 owl-carousel slider-hm8 owl-dot-style">
        @foreach ($dataHome["slider"] as $key => $item )
        <div class="slider-height-10 d-flex align-items-start justify-content-start bg-img"
        style="background-image: url({{asset($item["image_slider"])}});">
            <div class="container">
                <div class="slider-content-13 slider-animated-1 text-left">
                    <span class="animated">{!! $item["keyword_slider"] !!}</span>
                    <h1 class="animated">
                        {!! $item["description_slider"] !!}
                    </h1>
                    <a href="{{$item["url_slider"]}}" class="shop-btn animated">{{$item["tbutton_slider"]}}</a>
                </div>
            </div>
        </div>
        @endforeach
        <!-- Slider Single Item Start -->
    </div>
</div>
<!-- Slider Arae End --> --}}

<div class="th-hero-wrapper hero-2" id="hero" data-bg-src="{{asset('user/img/hero/hero_bg_2_1.jpg')}}">
    <div class="swiper th-slider" id="heroSlider2" data-slider-options='{"effect":"fade"}'>
        <div class="swiper-wrapper">

            @foreach ($dataHome["slider"] as $key => $item )
            <div class="swiper-slide">
                <div class="hero-inner">
                    <div class="container">
                        <div class="hero-style2"><span class="sub-title" data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}"
                                data-ani-delay="1,5s"><img src="{{asset($item["image_slider"])}}"
                                    alt="shape">{!! $item["keyword_slider"] !!}</span>
                            <h1 class="hero-title"><span class="title1" data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}"
                                    data-ani-delay="1,5s">{!! $item["description_slider"] !!}</span> </h1>
                            <div class="btn-group" data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}" data-ani-delay="1,5s">
                                <a href="{{$item["url_slider"]}}"
                                    class="th-btn">{{$item["tbutton_slider"]}}<i class="fas fa-chevrons-right ms-2"></i>
                                </a>
                                <div class="arrow"><img src="{{asset('user\img\hero\hero_arrow.svg')}}" alt="Icon"></div>
                            </div>
                        </div>
                    </div>
                    {{-- <div class="hero-img" data-ani="slidebottomright" data-ani-delay="0.1s"><img
                            src="{{asset($item["image_slider"])}}" alt="Image"></div> --}}
                    {{-- <div class="hero-shape1" data-ani="slideinup" data-ani-delay="0.7s"><img
                            src="{{asset('user\img\hero\hero_shape_1_1.png')}}" alt="shape"></div>
                    <div class="hero-shape2" data-ani="slideinup" data-ani-delay="0.8s"><img
                            src="{{asset('user\img\hero\hero_shape_1_2.png')}}" alt="shape"></div>
                    <div class="hero-shape3" data-ani="slideinup" data-ani-delay="0.9s"><img
                            src="{{asset('user\img\hero\hero_shape_1_3.png')}}" alt="shape"></div>
                    <div class="hero-shape4" data-ani="slidebottomright" data-ani-delay="0.5s"><img
                            src="{{asset('user\img\hero\hero_shape_2_1.png')}}" alt="shape"></div> --}}
                </div>
            </div>
            @endforeach


        </div>
    </div>
    <div class="icon-box"><button data-slider-prev="#heroSlider2" class="slider-arrow default"><i
                class="far fa-arrow-left"></i></button> <button data-slider-next="#heroSlider2"
            class="slider-arrow default"><i class="far fa-arrow-right"></i></button></div>
</div>



{{-- <div class="slider-height-10 d-flex align-items-start justify-content-start bg-img"
            style="background-image: url({{asset($item["image_slider"])}});">
                <div class="container">
                    <div class="slider-content-13 slider-animated-1 text-left">
                        <span class="animated">{!! $item["keyword_slider"] !!}</span>
                        <h1 class="animated">
                            {!! $item["description_slider"] !!}
                        </h1>
                        <a href="{{$item["url_slider"]}}" class="shop-btn animated">{{$item["tbutton_slider"]}}</a>
                    </div>
                </div>
            </div> --}}
