@extends('users-layouts.users-layouts.index')
@section('SEO')
{!! $dataPost["SEO"] !!}
@endsection
@section('content')

<!-- Breadcrumb Area start -->
<div class="breadcumb-wrapper" data-bg-src="assets/img/bg/breadcumb-bg.jpg">
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
                <div class="contact-form">
                    {{-- @dd($dataPost["contact"]) --}}
                    {!! $dataPost["contact"]["description_post"] !!}

                </div>
            </div>
        </div>
        <div class="contact-map mb-10">
            <div id="map">
                <div class="mapouter">
                    <div class="gmap_canvas">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9773.812644532052!2d105.63028582365752!3d10.43673262187156!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x310a658379b33e3d%3A0xfcd898e3b38e7f55!2zTuG7mEkgVEjhuqRUIFBIxq_GoE5HIE5BTQ!5e0!3m2!1svi!2s!4v1667472182804!5m2!1svi!2s"
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
