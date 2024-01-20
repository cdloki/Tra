<div class="col-lg-12 col-md-12">
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
                    {{-- <li>
                                    <a href="#"><i class="ion-person"></i> Admin</a>
                                </li> --}}
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
        <!-- single blog post -->
    </div>
    <div class="blog-single-tags-share d-sm-flex justify-content-between">
        <div class="blog-single-tags d-flex">
            {{-- <span class="title">Tags: </span>
                        <ul class="tag-list">
                            <li><a href="#">Fashion,</a></li>
                            <li><a href="#">T-shirt,</a></li>
                            <li><a href="#">White</a></li>
                        </ul> --}}
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
    </div>

    {{-- <div class="comment-area">
                    <h2 class="comment-heading">3 Comments</h2>
                    <div class="review-wrapper">
                        <div class="single-review">
                            <div class="review-img">
                                <img src="assets/images/testimonial-image/1.png" alt="">
                            </div>
                            <div class="review-content">
                                <div class="review-top-wrap">
                                    <div class="review-left">
                                        <div class="review-name">
                                            <h4>White Lewis</h4>
                                            <span class="date">February 16, 2020 at 1:38 am</span>
                                        </div>
                                    </div>
                                    <div class="review-left">
                                        <a href="#">Reply</a>
                                    </div>
                                </div>
                                <div class="review-bottom">
                                    <p>
                                        Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Suspendisse viverra ed viverra. Mauris ullarper euismod vehicula. Phasellus quam nisi, congue id nulla.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="single-review child-review">
                            <div class="review-img">
                                <img src="assets/images/testimonial-image/2.png" alt="">
                            </div>
                            <div class="review-content">
                                <div class="review-top-wrap">
                                    <div class="review-left">
                                        <div class="review-name">
                                            <h4>White Lewis</h4>
                                            <span class="date">February 16, 2020 at 1:38 am</span>
                                        </div>
                                    </div>
                                    <div class="review-left">
                                        <a href="#">Reply</a>
                                    </div>
                                </div>
                                <div class="review-bottom">
                                    <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Sus pen disse viverra ed viverra. Mauris ullarper euismod vehicula.</p>
                                </div>
                            </div>
                        </div>
                        <div class="single-review">
                            <div class="review-img">
                                <img src="assets/images/testimonial-image/1.png" alt="">
                            </div>
                            <div class="review-content">
                                <div class="review-top-wrap">
                                    <div class="review-left">
                                        <div class="review-name">
                                            <h4>White Lewis</h4>
                                            <span class="date">February 16, 2020 at 1:38 am</span>
                                        </div>
                                    </div>
                                    <div class="review-left">
                                        <a href="#">Reply</a>
                                    </div>
                                </div>
                                <div class="review-bottom">
                                    <p>
                                        Vestibulum ante ipsum primis aucibus orci luctustrices posuere cubilia Curae Suspendisse viverra ed viverra. Mauris ullarper euismod vehicula. Phasellus quam nisi, congue id nulla.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> --}}
    {{-- <div class="blog-comment-form">
                    <h2 class="comment-heading">Leave a Reply</h2>
                    <p>Your email address will not be published. Required fields are marked *</p>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="single-form">
                                <label>Your Review:</label>
                                <textarea placeholder="Write a review"></textarea>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="single-form">
                                <label>Name:</label>
                                <input type="text" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="single-form">
                                <label>Email:</label>
                                <input type="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="single-form">
                                <label>Website:</label>
                                <input type="email" placeholder="Website">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="single-form">
                                <input type="submit" value="Submit">
                            </div>
                        </div>
                    </div>
                </div> --}}