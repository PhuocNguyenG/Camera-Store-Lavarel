<head>
        <title>Chi tiết sản phẩm</title>
    </head>
    @extends('layout')
    @section('content')
    <!-- breadcrumb area start -->
        @foreach($show_news as $key => $value)
            <div class="breadcrumb-area-2 box-plr-45">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xxl-12">
                            <nav aria-label="breadcrumb" class="breadcrumb-list-2">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                                    <li class="breadcrumb-item"><a href="product">Tin tức</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{$value->news_title}}
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb area end -->

            <!-- product details area start -->
            <section class="product__details-area pb-45 box-plr-45">
                <div class="container-fluid">
                    <div class="row justify-content-center">

                        <div class="col-xxl-10 col-xl-10 col-lg-10">
                            <div
                                class="product__details-content product__details-content-2
                                 product-details-sidebar-sticky pl-30 text-center">
                                <h3 class="product__details-title">
                                    <a >{{$value->news_title}}</a>
                                </h3>
                                <a href="">
                                    <img src="{{URL('public/uploads/news/'.$value->news_image)}}" height="550" alt="">
                                </a>
                                <div class="product__details-accordion text-start">
                                    <div class="accordion" id="productDetailsAccordion">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="productOne">
                                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                        data-bs-target="#description" aria-expanded="true"
                                                        aria-controls="description">
                                                    Thông tin
                                                </button>
                                            </h2>
                                            <div id="description" class="accordion-collapse collapse show"
                                                 aria-labelledby="productDetailsAccordion"
                                                 data-bs-parent="#productDetailsAccordion">
                                                <div class="accordion-body">
                                                    <div class="product-description-wrapper">
                                                        {!!$value->news_content!!}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <!-- product details area end -->
            <div class="product-line"></div>
@endforeach
@endsection


