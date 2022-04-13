
<head>
    <title>
        Liên hệ
    </title>
</head>
@extends('layout')
@section('content')
<section>
    <!-- contact content area start -->
    <section class="contact__area pb-60 pt-90">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-10">
                    <div class="contact__wrapper">
                        <div class="contact__title text-center mb-50">
                            <span>GOD Team</span>
                            <h3>
                                <span>Xin chào, chúng tôi là của GOD Team.</span> <br>
                            </h3>
                            <p>Chúng tôi chuyên cung cấp thiết bị, dụng cụ điện tử liên quan tới máy ảnh, đèn, chân máy ảnh, ...</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                @foreach($show_contact as $contact)
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                    <div class="contact__address-item">
                        <div class="contact__address-content">
                            <div class="contact__address-flag d-flex align-items-center">
                                <div class="contact-flag mr-15">
                                    <img style="height: 50px; background: black"

                                        src="resources/client/img/logo/logo-white.ico  " alt="">
                                </div>
                                <div class="contact-flag-content">
                                    <h4>{{$contact->contact_name}}</h4>
                                    <p>Việt Nam</p>

                                </div>
                            </div>
                            <ul>
                                <li>Địa chỉ: <a
                                        href="https://www.google.com/maps/place/{{$contact->contact_address}}"
                                        target="_blank">{{$contact->contact_address}}</a></li>
                                <li>Số điện thoại: <a> {{$contact->contact_phone}}</a></li>
                                <li>Email: <a href="mailto:{{$contact->contact_email}}">{{$contact->contact_email}}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- contact content area end -->

    <!-- contact form area start -->
    <section class="contact__form-area p-rel">
        <div class="contact__map-wrapper">
           <iframe class="contact__map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1250520430203!2d106.71229764972993!3d10.801733161643522!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528a500e8c3d5%3A0xedfca63e47b5afb8!2zNDc1YSDEkGnhu4duIEJpw6puIFBo4bunLCBQaMaw4budbmcgMjUsIELDrG5oIFRo4bqhbmgsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCA3MDAwMCwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1648590908372!5m2!1sen!2s"  style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-6 col-md-8 col-sm-10">
                    <div class="contact__form black-bg-3">
                        <form action="#" >
                            <div class="contact__form-title text-center">
                                <h3>Nếu có câu hỏi, bạn có thể gửi ở đây!</h3>
                                <p>Thông tin của bạn sẽ không được công khai! </p>
                            </div>
                            <div class="contact__form-input">
                                <input style="background-color: white; color: black" type="text" placeholder="Tên ...">
                            </div>
                            <div class="contact__form-input">
                                <input style="background-color: white; color: black" type="email" placeholder="Email ...">
                            </div>
                            <div class="contact__form-input">
                                <textarea style="background-color: white; color: black" placeholder="Nội dung ..."></textarea>
                            </div>
                            <button class="contact__form-btn mt-15" type="submit">Gửi</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @endsection
