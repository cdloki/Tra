<!-- Slider Arae Start -->

<!-- <div class="th-hero-wrapper hero-2" id="hero" data-bg-src="{{asset('user/img/hero/hero_bg_2_1.jpg')}}">
    <div class="swiper th-slider" id="heroSlider2" data-slider-options='{"effect":"fade"}'>
        <div class="swiper-wrapper">

            @foreach ($dataHome["slider"] as $key => $item )
            <div class="swiper-slide">
                <div class="hero-inner">
                    <div class="container">
                        <div class="hero-style2"><span class="sub-title"
                                data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}"
                                data-ani-delay="1,5s"><img src="{{asset($item["image_slider"])}}" alt="shape">{!!
                                $item["keyword_slider"] !!}</span>
                            <h1 class="hero-title"><span class="title1"
                                    data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}"
                                    data-ani-delay="1,5s">{!! $item["description_slider"] !!}</span> </h1>
                            <div class="btn-group"
                                data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}"
                                data-ani-delay="1,5s">
                                <a href="{{$item["url_slider"]}}" class="th-btn">{{$item["tbutton_slider"]}}<i
                                        class="fas fa-chevrons-right ms-2"></i>
                                </a>
                                <div class="arrow"><img src="{{asset('user\img\hero\hero_arrow.svg')}}" alt="Icon">
                                </div>
                            </div>
                        </div>
                    </div>
                    {{-- <div class="hero-img" data-ani="slidebottomright" data-ani-delay="0.1s"><img
                            src="{{asset($item["image_slider"])}}" alt="Image">
                </div> --}}
                {{-- <div class="hero-shape1" data-ani="slideinup" data-ani-delay="0.7s"><img
                            src="{{asset('user\img\hero\hero_shape_1_1.png')}}" alt="shape">
            </div>
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
</div> -->

<div class="d-lg-none">
      <div class="m-2">
            <a target="_blank" href="https://maps.app.goo.gl/2U68k62bXbjkujfD8"><img src="{{asset('user/img/map.jpg')}}"
                        width="100%">
            </a>
      </div>
</div>

<div class="th-hero-wrapper hero-1" id="hero" data-bg-src="{{asset('user/img/hero/hero_bg_1_2.jpg')}}">
      <div class="swiper th-slider" id="heroSlide1" data-slider-options='{"effect":"fade"}'>
            <div class="swiper-wrapper">
                  @foreach ($dataHome["slider"] as $key => $item )
                  <div class="swiper-slide">
                        <div class="hero-inner">
                              <div class="container">
                                    <div class="hero-style1">
                                          <span class="sub-title"
                                                data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}"
                                                data-ani-delay="0.2s"><img
                                                      src="{{asset('user/img/theme-img/title_icon.svg')}}"
                                                      alt="shape">100% Quality Foods
                                          </span>
                                          <h1 class="hero-title">
                                                <span class="title1"
                                                      data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}"
                                                      data-ani-delay="0.4s">
                                                      {!! $item["keyword_slider"] !!}
                                                </span>
                                                </span>
                                                <span class="title2 text-theme"
                                                      data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}"
                                                      data-ani-delay="0.5s">{!! $item["description_slider"] !!}</span>
                                          </h1>
                                          <a href="{{$item["url_slider"]}}" target="_blank" class="th-btn"
                                                data-ani="{{$item["location_slider"] % 2 == 0 ? "slidebottomright" : "slideinup"}}"
                                                data-ani-delay="0.7s">
                                                {{$item["tbutton_slider"]}}
                                                <i class="fas fa-chevrons-right ms-2"></i>
                                          </a>
                                    </div>
                              </div>
                              <div class="hero-img" data-ani="slideinright" data-ani-delay="0.5s"><img
                                          src="{{asset($item["image_slider"])}}" width="450" alt="Image"></div>
                              <div class="hero-shape1" data-ani="slideinup" data-ani-delay="0.5s"><img
                                          src="{{asset('user/img\hero\hero_shape_1_1.png')}}" alt="shape"></div>
                              <div class="hero-shape2" data-ani="slideindown" data-ani-delay="0.6s"><img
                                          src="{{asset('user/img\hero\hero_shape_1_2.png')}}" alt="shape"></div>
                              <div class="hero-shape3" data-ani="slideinleft" data-ani-delay="0.7s"><img
                                          src="{{asset('user/img\hero\hero_shape_1_3.png')}}" alt="shape"></div>
                        </div>
                  </div>
                  @endforeach
            </div>
      </div>
      <div class="hero-shape4"><img class="svg-img" src="{{asset('user/img\hero\hero_shape_1_4.svg')}}" alt="shape">
      </div>
</div>