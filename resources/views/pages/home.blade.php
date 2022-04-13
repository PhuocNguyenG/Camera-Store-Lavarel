
<head>
    <title>Hyper Camera</title>
</head>


@extends('layout')
@section('content')
    <!-- slider area start -->
    <section class="slider-area-rel">
        <div class="slider-active slider-active-6 s-dot-style dot-style dot-style-1 dot-bottom-left-2 ">
            <div style="background: white" class="single-slider single-slider-3 slider-height-4 d-flex align-items-center light-green-bg">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xxl-6 col-xl-6 col-lg-8 col-md-6 pt-10 pb-10">
                            <div class="slider-content-6">
                                <span class="s-subtitle s-subtitle-3 s-subtitle-6 pb-25"> Sản phẩm mới</span>
                                <h2 class="s-title s-title-2 s-title-6 pb-28">{{$product_banner_newest->product_name}}</h2>
                                <p class="s-desc pb-75 slider-p-6">
                                    Hãng: {{$product_banner_newest->brand_name}}</p>
                                <div class="p-btn p-btn-5 slider-btn-6">
                                    <a href="{{URL('/chi-tiet-san-pham/'.$product_banner_newest->product_id)}}">Chi tiết</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xxl-6 col-xl-6 col-lg-4 col-md-6">
                            <div class="slider-thumb-6">
                                <img style="margin: auto;height: 400px;"
                                    src="{{URL('public/uploads/products/'.$product_banner_newest->product_image)}}" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- slider area end -->
    <!-- category area start -->
    <div id="category-area" class="category__area category__br-tp gray-bg-5">
        <div class="container-fluid">
            <div class="row row-cols-xxl-5 row-cols-xl-5 row-cols-lg-3 row-cols-md-2 row-cols-sm-2 row-cols-1 gx-0">
                <div class="col">
                    <div class="category__item category__br-right fix">
                        <div class="category__thumb">
                            <a href="{{URL('/san-pham/7')}}">
                                <img src="resources/client/img/brand/canon-logo.png " alt="">
                            </a>
                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="{{URL('/san-pham/7')}}"></a>
                            </div>
                            <a href="{{URL('/san-pham/7')}}" class="link-btn">Sản phẩm Canon</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="category__item category__br-right fix">
                        <div class="category__thumb">
                            <a href="{{URL('/san-pham/10')}}">
                                <img style="height: 100%; background: white"
                                    src="resources/client/img/brand/nikon-logo.png" alt="">
                            </a>

                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="{{URL('/san-pham/10')}}"></a>
                            </div>
                            <a href="{{URL('/san-pham/10')}}" class="link-btn">Sản phẩm Nikon</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="category__item category__br-right fix">
                        <div class="category__thumb">
                            <a href="{{URL('/san-pham/6')}}">
                                <img src="resources/client/img/brand/img.png" alt="">
                            </a>
                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="{{URL('/san-pham/6')}}"></a>
                            </div>
                            <a href="{{URL('/san-pham/6')}}" class="link-btn">Sản phẩm Sony</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="category__item category__br-right fix">
                        <div class="category__thumb">
                            <a href="{{URL('/san-pham/11')}}">
                                <img style="height: 100%"
                                    src="resources/client/img/brand/panasonic-logo.png" alt="">
                            </a>
                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="{{URL('/san-pham/11')}}"></a>
                            </div>
                            <a href="{{URL('/san-pham/11')}}" class="link-btn">Sản phẩm Panasonic</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="category__item category__br-right fix">
                        <div class="category__thumb">
                            <a href="{{URL('/san-pham/9')}}">
                                <img src="resources/client/img/brand/Fujifilm-logo.svg" alt="">
                            </a>
                        </div>
                        <div class="category__content text-center">
                            <div class="category__tag mb-10">
                                <a href="{{URL('/san-pham/9')}}"></a>
                            </div>
                            <a href="{{URL('/san-pham/9')}}" class="link-btn">Sản phẩm Fujifilm</a>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <!-- category area end -->
    <div class="top-selling-area pb-100 pt-95 gray-bg-4 ">
        <div class="container ">
            <div class="row">
                <div class="col-xxl-12">
                    <div class="section-title top-selling-title text-center pb-47">
                        <span class="p-subtitle p-subtitle-2">Máy ảnh</span>
                        <h3 class="p-title pb-15 mb-0">Những sản phẩm mới nhất</h3>
                        <p class="p-desc"></p>
                    </div>
                </div>
            </div>
            <div class="single-product-6-wrapper border-none">
                <div class="row pb-20 justify-content-center">
                    @foreach($all_product as $pro)
                    <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6 col-sm-6 box-shadow-12  wow fadeInUp"
                         style="width: calc(23vw - 10px); background-color: #f6f6f6;; padding: 3px; margin: 8px;">
                        <div class="single-product single-product-6" style="border:none" data-wow-delay=".2s">
                            <div class="product-thumb">
                                <a href="{{URL('/chi-tiet-san-pham/'.$pro->product_id)}}">
                                    <img src="{{URL('public/uploads/products/'.$pro->product_image)}}" style="border-radius:10px " alt="#">
{{--                                    <img src="{{URL('public/uploads/products/'.$pro->product_image)}}" alt="#">--}}
                                </a>
                                <div class="cart-btn cart-btn-1 p-abs">
                                    <a href="#">Thêm vào giỏ</a>
                                </div>
                            </div>
                            <div class="product-content">
                                <h4 class="pro-title pro-title-1"><a href="{{URL('/chi-tiet-san-pham/'.$pro->product_id)}}">
                                        {{$pro->product_name}}
                                    </a></h4>
                                <div class="pro-price">
                                    <span>{{number_format($pro->product_price)}} VNĐ</span>
{{--                                    <del>3.500.000 VNĐ</del>--}}
                                </div>
                                <div class="rating">
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                    <i class="fal fa-star active"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="row">
                    <div class="col-xxl-12">
                        <div class="btn-area mt-30 text-center wow fadeInUp mb-20" data-wow-delay=".5s">
                            <div class="p-btn p-btn-1">
                                <a href="san-pham">Hiển thị tất cả sản phẩm </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- border -->
        <div class="hr-border"></div>
        <!-- product modal area start -->
        </div>
        <!-- product modal area start -->
@endsection
