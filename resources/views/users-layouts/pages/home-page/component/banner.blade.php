<!-- Banner Area Start -->
<div class="banner-3-area mt-0px mb-100px">
    <div class="container">
        <div class="row">
            @foreach ( $dataHome["banner"] as $key => $item )
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb-res-xs-30 mb-res-sm-30">
                <div class="banner-wrapper banner-box">
                    <a href="{{$item["url_banner"]}}"><img style="" src="{{asset($item["image_banner"])}}" alt=""></a>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- Banner Area End -->


