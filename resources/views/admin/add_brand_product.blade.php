@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm thương hiệu sản phẩm
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
                                <form role="form" action="{{URL('/save-brand-product')}}" method="post">
                                    {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="exampleInputCategory">Tên thuơng hiệu</label>
                                    <input type="text" name ="brand_product_name" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputDesc">Mô tả thương hiệu</label>
                                    <textarea style = "resize: none" rows="6" class="form-control" name= "brand_product_desc" id="exampleInputPassword1" placeholder="Password"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputStatus">Hiển thị</label>   
                                    <select name ="brand_product_status" class="form-control input-sm m-bot15">
                                        <option value = "0">Ẩn</option>
                                        <option value = "1">Hiển thị</option>
                            </select>
                                </div>
                               
                                <button type="submit" name = "add_category_product" class="btn btn-info">Thêm danh mục</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection