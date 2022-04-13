@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Cập nhật liên hệ
                        </header>
                        <div class="panel-body">
                            <?php
                                $message = Session::get('message');
                                if($message)
                                {
                                echo '<span class="text-alert">'.$message.'</span>';
                                Session::put('message',null);
                                }
                            ?>
                            <div class="position-center">
                                @foreach($edit_contact as $key => $cont)
                                <form role="form" action="{{URL('/update-contact/'.$cont->contact_id)}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="exampleInputCategory">Tên cửa hàng</label>
                                    <input type="text" name ="contact_name" class="form-control" id="exampleInputEmail1" value="{{$cont->contact_name}}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputCategory">Số điện thoại</label>
                                    <input type="text" name ="contact_phone" class="form-control" id="exampleInputEmail1" value="{{$cont->contact_phone}}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputCategory">Email</label>
                                    <input type="text" name ="contact_email" class="form-control" id="exampleInputEmail1" value="{{$cont->contact_email}}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputCategory">Địa chỉ</label>
                                    <input type="text" name ="contact_address" class="form-control" id="exampleInputEmail1" value="{{$cont->contact_address}}">
                                </div>
                                
                               
                                <button type="submit" name = "add_product" class="btn btn-info">Cập nhật thông tin liên hệ</button>
                            </form>

                            @endforeach
                            </div>

                        </div>
                    </section>

            </div>
@endsection