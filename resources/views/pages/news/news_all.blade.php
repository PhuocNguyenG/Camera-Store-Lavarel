
<head>
    <title>Danh sách sản phẩm</title>
</head>
@extends('layout')
@section('content')
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area pt-30 pb-50 mb-20">
        <div class="container">
            <div class="breadcrumb-title text-center">
                <h3>Tin tức công nghệ</h3>
            </div>
            <div class="breadcrumb-list">
                <a href="trang-chu">Trang chủ</a>
                <span>Tin tức</span>
            </div>
        </div>
    </div>
        <!-- breadcrumb area end -->

        <!-- shop area start -->
        <div class="shop-area">
            <div class="container">
                <div class="row" STYLE="justify-content: center;">
                    <div class="col-xxl-9 col-xl-9 col-lg-8 order-first order-lg-last">
                        <div class="shop-top-area mb-40">
                            <div class="row ">
                                <div class="col-xxl-4 col-xl-2 col-md-3 col-sm-3">
                                </div>
                                <div class="col-xxl-4 col-xl-6 col-md-6 col-sm-6">
                                </div>
                                <div class="col-xl-4 col-xl-4 col-md-3 col-sm-3">
                                    <div class="text-sm-end">
                                        <div class="select-default">
                                            <select name="short" id="short" class="shorting-select">
                                                <option value="">Mới nhất</option>
{{--                                                <option value="">Giá tăng dần</option>--}}
{{--                                                <option value="">Giá giảm dần</option>--}}
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
                                        @foreach($show_news as $pro)
                                            <div style="margin: 5px" class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-6 box-shadow-12 wow fadeInUp" data-wow-delay=".1s">
                                                <div class="single-product mb-15 " >
                                                    <div class="product-thumb">
                                                        <a href="{{URL('/chi-tiet-tin-tuc/'.$pro->news_id)}}">
                                                            <img src="{{URL('public/uploads/news/'.$pro->news_image)}}"
                                                                 alt="#">
                                                        </a>
                                                    </div>
                                                    <div class="product-content">
                                                        <h4 class="pro-title pro-title-1"><a
                                                                href="{{URL('/chi-tiet-tin-tuc/'.$pro->news_id)}}">
                                                                {{$pro->news_title}}
                                                            </a>
                                                        </h4>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        {!! $show_news->links('vendor\pagination\custom') !!}
                    </div>
                </div>
            </div>
        </div>
    @endsection
