<section class="th-blog-wrapper blog-details space-top space-extra-bottom">
    <div class="container">
       <div class="row">
          <div class="col-xxl-8 col-lg-7">
             <div class="th-blog blog-single">
                <div class="blog-img"><img src="{{asset($dataDiscount["discount"]["image_post"])}}" alt="Blog Image"></div>
                <div class="blog-content">
                   <div class="blog-meta"><a class="author" href="blog.html"><i class="far fa-user"></i>By Admin</a>
                    <a href="blog.html"><i class="far fa-calendar"></i>21 June, 2023</a>
                    <a href="blog-details.html"><i class="far fa-comments"></i>Comments (3)</a>
                </div>
                   <h2 class="blog-title">{{$dataDiscount["discount"]["name_post"]}}</h2>

                   {!! $dataDiscount["discount"]["description_post"] !!}


                   <div class="share-links clearfix">
                      <div class="row justify-content-between">
                         <div class="col-sm-auto">
                            <span class="share-links-title">Tags:</span>
                            <div class="tagcloud"><a href="blog.html">Agriculture</a> <a href="blog.html">Organic</a></div>
                         </div>
                         <div class="col-sm-auto text-xl-end">
                            <span class="share-links-title">Share On:</span>
                            <div class="th-social"><a href="https://facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a> <a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a> <a href="https://linkedin.com/" target="_blank"><i class="fab fa-linkedin-in"></i></a> <a href="https://instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a></div>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
             {{-- <div class="th-comments-wrap">
                <h2 class="blog-inner-title h4"><i class="far fa-comments"></i> Comments (03)</h2>
                <ul class="comment-list">
                   <li class="th-comment-item">
                      <div class="th-post-comment">
                         <div class="comment-avater"><img src="assets\img\blog\comment-author-1.jpg" alt="Comment Author"></div>
                         <div class="comment-content">
                            <span class="commented-on"><i class="far fa-calendar"></i>14 March, 2023</span>
                            <h3 class="name">Adam Jhon</h3>
                            <p class="text">Collaboratively empower multifunctional e-commerce for prospective applications. Seamlessly productivate plug and play markets.</p>
                            <div class="reply_and_edit"><a href="blog-details.html" class="reply-btn"><i class="fas fa-reply"></i>Reply</a></div>
                         </div>
                      </div>
                      <ul class="children">
                         <li class="th-comment-item">
                            <div class="th-post-comment">
                               <div class="comment-avater"><img src="assets\img\blog\comment-author-2.jpg" alt="Comment Author"></div>
                               <div class="comment-content">
                                  <span class="commented-on"><i class="far fa-calendar"></i>15 March, 2023</span>
                                  <h3 class="name">Jusctin Dacon</h3>
                                  <p class="text">Competently provide access to fully researched methods of empowerment without sticky models.</p>
                                  <div class="reply_and_edit"><a href="blog-details.html" class="reply-btn"><i class="fas fa-reply"></i>Reply</a></div>
                               </div>
                            </div>
                         </li>
                      </ul>
                   </li>
                   <li class="th-comment-item">
                      <div class="th-post-comment">
                         <div class="comment-avater"><img src="assets\img\blog\comment-author-3.jpg" alt="Comment Author"></div>
                         <div class="comment-content">
                            <span class="commented-on"><i class="far fa-calendar"></i>16 March, 2023</span>
                            <h3 class="name">Jacklin July</h3>
                            <p class="text">Collaboratively empower multifunctional e-commerce for prospective applications. Seamlessly productivate plug and play markets.</p>
                            <div class="reply_and_edit"><a href="blog-details.html" class="reply-btn"><i class="fas fa-reply"></i>Reply</a></div>
                         </div>
                      </div>
                   </li>
                </ul>
             </div>
             <div class="th-comment-form">
                <div class="form-title">
                   <h3 class="blog-inner-title h4 mb-2"><i class="fa-solid fa-reply"></i> Leave a Comment</h3>
                   <p class="form-text">Your email address will not be published. Required fields are marked *</p>
                </div>
                <div class="row">
                   <div class="col-md-6 form-group"><input type="text" placeholder="Your Name*" class="form-control"> <i class="far fa-user"></i></div>
                   <div class="col-md-6 form-group"><input type="text" placeholder="Your Email*" class="form-control"> <i class="far fa-envelope"></i></div>
                   <div class="col-12 form-group"><input type="text" placeholder="Website" class="form-control"> <i class="far fa-globe"></i></div>
                   <div class="col-12 form-group"><textarea placeholder="Write a Comment*" class="form-control"></textarea> <i class="far fa-pencil"></i></div>
                   <div class="col-12 form-group mb-0"><button class="th-btn">Post Comment</button></div>
                </div>
             </div> --}}
          </div>
          <div class="col-xxl-4 col-lg-5">
             <aside class="sidebar-area">
                <div class="widget">
                   <h3 class="widget_title">Bài viết khác</h3>
                   <div class="recent-post-wrap">


                    @foreach ($dataDiscount["discount-new"] as $key => $item )


                    <div class="recent-post">
                        <div class="media-img"><a href="{{route('discount-post.show',$item['url_post'])}}"><img src="{{asset($item["image_post"])}}" alt="Blog Image"></a></div>
                        <div class="media-body">
                           <h4 class="post-title"><a class="text-inherit" href="{{route('discount-post.show',$item['url_post'])}}">{{$item["name_post"]}}</a></h4>
                           <div class="recent-post-meta"><a href="{{route('discount-post.show',$item['url_post'])}}"><i class="far fa-calendar"></i>{{$item["created_at"]}}</a></div>
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



{{-- <div class="col-lg-12 col-md-12">
    <div class="blog-posts">
        <div class="single-blog-post blog-grid-post">
            <div class="blog-post-media">
                <div class="blog-image single-blog">
                    <a><img src="{{asset($dataDiscount["discount"]["image_post"])}}" alt="blog"></a>
                </div>
            </div>
            <div>
                <h4 class="blog-title" style="text-align: center;margin-top: 10px">
                    <a>{{$dataDiscount["discount"]["name_post"]}}</a></h4>
                <ul class="blog-page-meta">
                    <li>
                        <a><i class="ion-calendar"></i> {{$dataDiscount["discount"]["created_at"]}}</a>
                    </li>
                </ul>
                {!! $dataDiscount["discount"]["content_post"] !!}
            </div>
            <br>
            <div class="single-post-content">
                {!! $dataDiscount["discount"]["description_post"] !!}
            </div>
        </div>
    </div>
    <div class="blog-single-tags-share d-sm-flex justify-content-between">
        <div class="blog-single-tags d-flex">
        </div>
        <div class="blog-single-share d-flex">
            <span class="title">Share:</span>
            <ul class="social">
                <li>
                    <a href="#"><i class="ion-social-facebook"></i></a>
                </li>
                <li>
                    <a href="#"><i class="ion-social-twitter"></i></a>
                </li>
                <li>
                    <a href="#"><i class="ion-social-google"></i></a>
                </li>
                <li>
                    <a href="#"><i class="ion-social-instagram"></i></a>
                </li>
            </ul>
        </div>
    </div> --}}
