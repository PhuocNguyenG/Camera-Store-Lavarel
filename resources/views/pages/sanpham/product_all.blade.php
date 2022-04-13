
<head>
    <title>Danh sách sản phẩm</title>
</head>

        @extends('layout')
        @section('content')
        <!-- breadcrumb area start -->
        <div class="breadcrumb-area pt-50 pb-50 mb-20" data-background="resources/client/img/banner/banner-mix-c.png"
            style="
            background-position: center;
            width: 100%;
            height: fit-content;
            background-repeat: no-repeat; ">
            <div class="container">
                <div class="breadcrumb-title text-center">
                    <h3>Tất cả sản phẩm</h3>
                </div>
                <div class="breadcrumb-list">
                    <a href="trang-chu">Trang chủ</a>
                    <span>Danh sách sản phẩm</span>
                </div>
            </div>
        </div>

        <div class="shop-area">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-3 col-xl-3 col-lg-4">
                        <div class="shop-sidebar-area pt-7 pr-60">
                            <div class="single-widget pb-20 mb-50">
                                <h4 class="widget-title">Thương hiệu</h4>
                                <div class="widget-category-list">
                                    <form action="#">
                                        @foreach($brand as $item)
                                        <div class="single-widget-category">
                                            <input type="checkbox" id="brand-item-{{$item->brand_id}}" name="brand-item" value="{{$item->brand_id}}">
                                            <label for="brand-item-{{$item->brand_id}}">{{$item->brand_name}}<span></span></label>
                                        </div>
                                        @endforeach
                                    </form>
                                </div>
                            </div>
                            <div class="single-widget mb-50">
                                <h4 class="widget-title title-price-space">Lọc theo giá</h4>
                                <form action="#">
                                    <div class="ui-price-slider mb-40">
                                        <div class="slider-range">
                                            <div id="slider-range" class="mb-20"></div>
                                            <div class="row">
                                                <div class="col-9">
                                                    <p>
                                                        <label for="amount">Giá:</label>
                                                        <input type="text" id="amount" readonly>
                                                    </p>
                                                </div>
                                                <div class="col-3">
                                                    <div class="text-end">
                                                        <a href="#" class="widget-title">Lọc</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
{{--                            <div class="single-widget pb-50 mb-50">--}}
{{--                                <h4 class="widget-title">Lọc theo mục</h4>--}}
{{--                                <div class="widget-color-list widget-color-box scroll-box-default">--}}
{{--                                    <form action="#">--}}
{{--                                        <div class="single-widget-category">--}}
{{--                                            <input type="checkbox" id="color-item-1" name="cat-item">--}}
{{--                                            <label for="color-item-1" class="color-black-bg">Máy ảnh--}}
{{--                                                <span>(12)</span></label>--}}
{{--                                        </div>--}}
{{--                                        <div class="single-widget-category">--}}
{{--                                            <input type="checkbox" id="color-item-2" name="cat-item">--}}
{{--                                            <label for="color-item-2" class="color-green-bg">Ống--}}
{{--                                                kính<span>(02)</span></label>--}}
{{--                                        </div>--}}
{{--                                        <div class="single-widget-category">--}}
{{--                                            <input type="checkbox" id="color-item-3" name="cat-item">--}}
{{--                                            <label for="color-item-3" class="color-blue-bg">Đèn--}}
{{--                                                flash<span>(06)</span></label>--}}
{{--                                        </div>--}}
{{--                                    </form>--}}
{{--                                </div>--}}
{{--                            </div>--}}
                        </div>
                    </div>
                    <div class="col-xxl-9 col-xl-9 col-lg-8 order-first order-lg-last">
                        <div class="shop-top-area mb-40">
                            <div class="row">
                                <div class="col-xxl-4 col-xl-2 col-md-3 col-sm-3">
                                </div>
                                <div class="col-xxl-4 col-xl-6 col-md-6 col-sm-6">
                                </div>
                                <div class="col-xl-4 col-xl-4 col-md-3 col-sm-3">
                                    <div class="text-sm-end">
                                        <div class="select-default">
                                            <select name="short" id="short" class="shorting-select">
                                                <option value="">Mới nhất</option>
                                                <option value="">Giá tăng dần</option>
                                                <option value="">Giá giảm dần</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="shop-main-area">
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade  show active" id="tab1">
                                    <div class="row pb-20">
                                        @foreach($all_product as $pro)
                                        <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6 box-shadow-12  wow fadeInUp"
                                             style="width: calc(17vw - 10px); background-color: #f6f6f6;; padding: 3px; margin: 5px 5px 7px 4px;"
                                             data-wow-delay=".1s">
                                            <div class="single-product"
                                                 style="height: 100%"
                                            >
                                                <div class="product-thumb" style=" border-radius: 10px;"
                                                >
                                                    <div style="height: 280px;
                                                            display: flex;
                                                            justify-content: center;
                                                            align-items: center;
                                                            background: white;">
                                                    <a href="{{URL('/chi-tiet-san-pham/'.$pro->product_id)}}">
                                                        <img src="{{URL('public/uploads/products/'.$pro->product_image)}}"
                                                             alt="#">
                                                    </a>
                                                    </div>
                                                    <div class="cart-btn cart-btn-1 p-abs">
                                                        <a href="#">Add to cart</a>
                                                    </div>
                                                </div>
                                                <div class="product-content ml-15">
                                                    <h4 class="pro-title pro-title-1"><a
                                                            href="{{URL('/chi-tiet-san-pham/'.$pro->product_id)}}">
                                                            {{$pro->product_name}}
                                                        </a>
                                                    </h4>
                                                    <div class="pro-price">
                                                        <span>{{number_format($pro->product_price)}} VNĐ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        {!! $all_product->links('vendor\pagination\custom') !!}

                    </div>
                </div>
            </div>

            @endsection

