@extends('users-layouts.users-layouts.index')
@section('SEO')
{!! $dataPost["SEO"] !!}
@endsection
@section('content')

<!-- Breadcrumb Area start -->
<div class="breadcumb-wrapper" data-bg-src="{{asset('user/img/bg/bg_blog.jpg')}}">
    <div class="container">
        <div class="breadcumb-content">
            <h1 class="breadcumb-title">Liên hệ</h1>
            <ul class="breadcumb-menu">
                <li><a href="/">Trang chủ</a></li>
                <li>Liên hệ</li>
            </ul>
        </div>
    </div>
</div>


<!-- Breadcrumb Area End -->
<!-- contact area start -->
<div class="contact-area mtb-60px">
    <div class="container">
        <div>
            <div class="col-lg-12 col-md-12">
                <div class="space">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-6 col-md-7">
                                <div class="title-area text-center">
                                    <h2 class="sec-title">Thông tin liên hệ</h2>
                                    <p class="sec-text">Liên hệ với chúng tôi để được hỗ trợ tận tình</p>
                                </div>
                            </div>
                        </div>
                        <div class="row gy-4 justify-content-center">
                            <div class="col-xl-5 col-lg-6 col-md-6">
                                <div class="contact-feature">
                                    <div class="box-icon"><i class="fa-light fa-location-dot"></i></div>
                                    <div class="media-body">
                                        <h3 class="box-title">Địa chỉ</h3>
                                        <p class="box-text">{{$Setting["address_website"]}}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="contact-feature">
                                    <div class="box-icon bg-theme2"><i class="fa-light fa-phone"></i></div>
                                    <div class="media-body">
                                        <h3 class="box-title">Số điện thoại</h3>
                                        <p class="box-text"><a
                                                href="tel:+{{$Setting["phone_website"]}}">{{$Setting["phone_website"]}}</a>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="contact-feature">
                                    <div class="media-body">
                                        <h3 class="box-title">Theo dõi</h3>
                                        <div class="th-social">
                                            <a target="_blank" href="{{$Setting["facebook_website"]}}">
                                                <img width="25" src="{{asset('user/img/icon/facebook-icon.png')}}"
                                                    alt="">
                                            </a>
                                            <a target="_blank" href="{{$Setting["shoppe_website"]}}">
                                                <img width="25" src="{{asset('user/img/icon/icon_shopee_32.png')}}"
                                                    alt="">
                                            </a>
                                            <a target="_blank" href="{{$Setting["zalo_website"]}}">
                                                <img width="25" src="{{asset('user/img/icon/zalo-icon-circle-1.png')}}"
                                                    alt="">
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="contact-map mb-10">
            <div id="map">
                <div class="mapouter">
                    <div class="gmap_canvas">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.9164950796394!2d108.2210805!3d16.0698225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314218315ed7d079%3A0xb56d5fa713936cec!2zMTA0IE5ndXnhu4VuIENow60gVGhhbmgsIEjhuqNpIENow6J1IDEsIEjhuqNpIENow6J1LCDEkMOgIE7hurVuZyA1NTAwMDA!5e0!3m2!1svi!2s!4v1714757108908!5m2!1svi!2s"
                            style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- contact area end -->




















@section('add-scripts')
{{-- <script >
    renderSEO("post",2);
</script> --}}

@endsection
@endsection