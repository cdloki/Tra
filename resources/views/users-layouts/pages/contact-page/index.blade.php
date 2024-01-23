@extends('users-layouts.users-layouts.index')
@section('SEO')
{!! $dataPost["SEO"] !!}
@endsection
@section('content')

<!-- Breadcrumb Area start -->
<div class="breadcumb-wrapper"
    data-bg-src="https://png.pngtree.com/background/20210710/original/pngtree-taobao-tmall-spring-tea-listed-home-promotion-poster-banner-picture-image_1003482.jpg">
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
                                    <h2 class="sec-title">Contact Information</h2>
                                    <p class="sec-text">Organic foods are typically certified by regulatory bodies to
                                        ensure they
                                        meet specific organic standards.</p>
                                </div>
                            </div>
                        </div>
                        <div class="row gy-4 justify-content-center">
                            <div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="contact-feature">
                                    <div class="box-icon"><i class="fa-light fa-location-dot"></i></div>
                                    <div class="media-body">
                                        <h3 class="box-title">Our Address</h3>
                                        <p class="box-text">8502 Preston Rd. Ingle wood, Maine 98380</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="contact-feature">
                                    <div class="box-icon bg-theme2"><i class="fa-light fa-phone"></i></div>
                                    <div class="media-body">
                                        <h3 class="box-title">Phone Number</h3>
                                        <p class="box-text"><a href="tel:+16326543654">+(163)-2654-3654</a> <a
                                                href="tel:+16326545566">+(163)-2654-5566</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="contact-feature">
                                    <div class="box-icon bg-title"><i class="fa-light fa-envelope"></i></div>
                                    <div class="media-body">
                                        <h3 class="box-title">Email Address</h3>
                                        <p class="box-text"><a href="mailto:help24/7@frutin.com">help24/7@frutin.com</a>
                                            <a href="mailto:info@frutin.com">info@frutin.com</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="contact-feature">
                                    <div class="media-body">
                                        <h3 class="box-title">Follow Social Media</h3>
                                        <div class="th-social"><a target="_blank" href="https://facebook.com/"><i
                                                    class="fab fa-facebook-f"></i></a> <a target="_blank"
                                                href="https://twitter.com/"><i class="fab fa-twitter"></i></a> <a
                                                target="_blank" href="https://instagram.com/"><i
                                                    class="fab fa-instagram"></i></a> <a target="_blank"
                                                href="https://linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                                            <a target="_blank" href="https://pinterest.com/"><i
                                                    class="fab fa-pinterest-p"></i></a>
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
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.990389804123!2d108.21814667465951!3d16.06598848461302!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314218336f7ca5f3%3A0xd708db6497400e2d!2zMTY0QSBOZ3V54buFbiBDaMOtIFRoYW5oLCBQaMaw4bubYyBOaW5oLCBI4bqjaSBDaMOidSwgxJDDoCBO4bq1bmcgNTUwMDAwLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1706017243309!5m2!1sen!2s"
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