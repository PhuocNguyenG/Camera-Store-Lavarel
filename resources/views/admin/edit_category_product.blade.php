@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Cập nhật danh mục sản phẩm
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

                            @foreach($edit_category_product as $key =>$edit_value)
                            <div class="position-center">
                                <form role="form" action="{{URL('/update-category-product/'.$edit_value->category_id)}}" method="post">
                                    {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="exampleInputCategory">Tên danh mục</label>
                                    <input type="text" value="{{$edit_value->category_name}}" name ="category_product_name" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputDesc">Mô tả danh mục</label>
                                    <textarea style = "resize: none" rows="6" class="form-control" name= "category_product_desc" id="exampleInputPassword1" >{{$edit_value->category_desc}}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputStatus">Hiển thị</label>   
                                    <select name ="category_product_status" class="form-control input-sm m-bot15">
                                        <option value = "0">Ẩn</option>
                                        <option value = "1">Hiển thị</option>
                            </select>
                                </div>
                                
                                <button type="submit" name = "update_category_product" class="btn btn-info">Cập nhật danh mục</button>
                            </form>
                            </div>
                        @endforeach
                        </div>
                    </section>

            </div>
@endsection