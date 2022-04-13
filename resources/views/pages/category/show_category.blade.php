
{{--<head>--}}
{{--    <title>--}}
{{--        Sản phẩm--}}
{{--    </title>--}}
{{--</head>--}}
{{--@extends('layout')--}}

{{--@section('content')--}}
{{--<div class="features_items">--}}
{{--                        <h2 class="title text-center">{{$category_name->category_name}}</h2>--}}
{{--                        @foreach($category_by_id as $key=>$product)--}}
{{--                        <a href="{{URL('/chi-tiet-san-pham/'.$product->product_id)}}">--}}
{{--                        @if($product->product_status == '1')--}}
{{--                        <div class="col-sm-4">--}}
{{--                            <div class="product-image-wrapper">--}}
{{--                                <div class="single-products">--}}
{{--                                        <div class="productinfo text-center">--}}
{{--                                            <img src="{{URL('public/uploads/products/'.$product->product_image)}}" alt="" />--}}
{{--                                            <h2>{{number_format($product->product_price)}} VNĐ</h2>--}}
{{--                                            <p>{{$product->product_name}}</p>--}}
{{--                                            <a href="{{URL('/chi-tiet-san-pham/'.$product->product_id)}}" class="btn btn-default add-to-cart"><i class="fa fas fa-laptop"></i>Xem chi tiết</a>--}}
{{--                                        </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        @endif--}}
{{--                    </a>--}}
{{--                        @endforeach--}}
{{--                    </div>--}}

{{--@endsection--}}
