
<head>
    <title>Tìm kiếm</title>
</head>

@extends('layout')

@section('content')
    <div class="breadcrumb-area pt-30 pb-50 mb-20">
        <div class="container">
            <div class="breadcrumb-title text-center">
                <h3>Tìm kiếm: {{$keywords}}</h3>
            </div>
            <div class="breadcrumb-list">
                <a href="trang-chu">Trang chủ</a>
                <span>Kết quả tìm kiếm</span>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- shop area start -->
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
                                    @foreach($search_product as $pro)
                                        <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                            <div class="single-product mb-15 wow fadeInUp" data-wow-delay=".1s">
                                                <div class="product-thumb">
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
                                                <div class="product-content">
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
                    {!! $search_product->appends(['keyword'=>$keywords])->links('vendor\pagination\custom') !!}
                </div>
            </div>
        </div>

    @endsection

