<div class="blog-related-post">
    <div class="row">
        <div class="col-md-12 text-center">
            <!-- Section Title -->
            <div class="section-title underline-shape">
                <h2>Khuyến mãi khác</h2>
            </div>
            <!-- Section Title -->
        </div>
    </div>
    <div class="row">
        @foreach ($dataDiscount["discount-new"] as $key => $item )
        <div class="col-md-4 mb-res-md-30px mb-res-sm-30px">
            <div class="blog-post-media">
                <div class="blog-image single-blog">
                    <a href="{{route('discount-post.show',$item['url_post'])}}"><img src="{{asset($item["image_post"])}}" alt="blog"></a>
                </div>
            </div>
            <div class="blog-post-content-inner">
                <h4 class="blog-title"><a href="{{route('discount-post.show',$item['url_post'])}}">{{$item["name_post"]}}</a></h4>
                <ul class="blog-page-meta">
                    {{-- <li>
                        <a ><i class="ion-person"></i> Admin</a>
                    </li> --}}
                    <li>
                        <a ><i class="ion-calendar"></i> {{$item["created_at"]}}</a>
                    </li>
                </ul>
            </div>
        </div>
        @endforeach



    </div>
</div>
