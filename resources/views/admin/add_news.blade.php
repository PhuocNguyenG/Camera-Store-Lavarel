@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm tin tức
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
                                <form role="form" action="{{URL('/save-news')}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="exampleInputCategory">Tên tin tức</label>
                                    <input type="text" name ="news_title" class="form-control" id="exampleInputEmail1" placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputCategory">Hình ảnh tin tức</label>
                                    <input type="file" name ="news_image" class="form-control" id="exampleInputEmail1"> 
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputDesc">Nội dung tin tức</label>
                                    <textarea style = "resize: none" rows="6" class="form-control" name= "news_content" id="ckeditor2" placeholder="Password"></textarea>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputStatus">Hiển thị</label>   
                                    <select name ="news_status" class="form-control input-sm m-bot15">
                                        <option value = "0">Ẩn</option>
                                        <option value = "1">Hiển thị</option>
                                    </select>
                                </div>
                               
                                <button type="submit" name = "add_product" class="btn btn-info">Thêm tin tức</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection