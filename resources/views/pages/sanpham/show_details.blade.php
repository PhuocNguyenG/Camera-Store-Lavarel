
<head>
    <title>Chi tiết sản phẩm</title>
</head>

@extends('layout')
@section('content')
    <!-- breadcrumb area start -->
    @foreach($details_product as $key => $value)
        <div class="breadcrumb-area-2 box-plr-45">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xxl-12">
                        <nav aria-label="breadcrumb" class="breadcrumb-list-2">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                                <li class="breadcrumb-item"><a href="product">Sản phẩm</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{$value->product_name}}
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
                <div class="row">

                    <div class="col-xxl-5 col-xl-5 col-lg-5">
                        <div class="product__details-grid-thumb">
                            <div class="row gy-1 gx-1">
{{--                                có thể xuất nhiều hình tại đây ->foreach--}}
                                <div class="col-xxl-11 col-xl-11 col-lg-12 col-md-12 col-sm-12">
                                    <div class="product-thumb-grid w-img">
                                        <img src="{{URL('public/uploads/products/'.$value->product_image)}}"
                                             alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-7 col-xl-7 col-lg-7">
                        <div
                            class="product__details-content product__details-content-2 product-details-sidebar-sticky pl-30">
                            <h3 class="product__details-title">
                                <a >{{$value->product_name}}</a>
                            </h3>
                            <div class="product__details-price">
                                <span class="price">{{number_format($value->product_price)}} VNĐ</span>
                            </div>
{{--                            <div class="product__details-rating d-flex align-items-center mb-15">--}}
{{--                                <ul class="mr-10">--}}
{{--                                    <li><a href="#"><i class="fal fa-star"></i></a></li>--}}
{{--                                    <li><a href="#"><i class="fal fa-star"></i></a></li>--}}
{{--                                    <li><a href="#"><i class="fal fa-star"></i></a></li>--}}
{{--                                    <li><a href="#"><i class="fal fa-star"></i></a></li>--}}
{{--                                    <li><a href="#"><i class="fal fa-star"></i></a></li>--}}
{{--                                </ul>--}}
{{--                            </div>--}}

                            <div class="product__details-meta mb-25">
                                <ul>
                                    <li>
                                        <div class="product-availibility">
                                            <span>Trạng thái: </span>
                                            <p>
                                                <span>Còn hàng</span>
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="product-sku">

                                            <span>Thương hiệu: </span>
                                            <p>
                                                <span>{{$value->brand_name}}</span>
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="product-sku">
                                            <span>Loại:</span>
                                            <p>
                                                <span>{{$value->category_name}}</span>
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="product__details-action mb-20">
                                <form action="#">
                                    <div class="product__details-quantity d-sm-flex align-items-center">
                                        <div class="product-quantity mb-20 mr-15">
                                            <div class="cart-plus-minus"><input type="text" value="1" /></div>
                                        </div>
                                        <div class="product-add-cart  product-add-cart-2 mb-20">
                                            <button class="s-btn s-btn-2 s-btn-big">Thêm vào giỏ</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="product__details-accordion">
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
                                                    {!!$value->product_desc!!}
                                                    {!!$value->product_content!!}
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


