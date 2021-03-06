@extends('admin_layout')
@section('admin_content')
<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê sản phẩm
    </div>
    <div class="row w3-res-tb">
      <div class="col-sm-4">
      </div>
      <div class="col-sm-3">
{{--        <div class="input-group">--}}
{{--          <input type="text" class="input-sm form-control" placeholder="Search">--}}
{{--          <span class="input-group-btn">--}}
{{--            <button class="btn btn-sm btn-default" type="button">Tìm!</button>--}}
{{--          </span>--}}
{{--        </div>--}}
      </div>
    </div>
    <div class="table-responsive">
        <?php
            $message = Session::get('message');
            if($message)
            {
            echo '<span class="text-alert">'.$message.'</span>';
            Session::put('message',null);
            }
        ?>
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th style="width:20px;">
              <label class="i-checks m-b-none">
                <input type="checkbox"><i></i>
              </label>
            </th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Hình ảnh sản phẩm</th>
            <th>Danh mục</th>
            <th>Thương hiệu</th>

            <th>Hiển thị</th>
            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
            @foreach($all_product as $key => $pro)
          <tr>
            <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
            <td>{{ $pro->product_name}}</td>
            <td>{{ $pro->product_price}}</td>
            <td><img src="public/uploads/products/{{ $pro->product_image}}"height="70px" witdh="70px"></td>
            <td>{{ $pro->category_name}}</td>
            <td>{{ $pro->brand_name}}</td>

            <td><span class="text-ellipsis">
                <?php
               if($pro->product_status==0){
                ?>
                <a href="{{URL('/unactive-product/'.$pro->product_id)}}"><span class="fa-thumb-styling fa fas fa-eye-slash"></span></a>
                <?php
                 }else{
                ?>
                 <a href="{{URL('/active-product/'.$pro->product_id)}}"><span class="fa-thumb-styling fa fas fa-eye"></span></a>
                <?php
               }
              ?>
            </span></td>
            <td>
              <a href="{{URL('/edit-product/'.$pro->product_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active"></i></a>
               <a onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm?')" href="{{URL('/delete-product/'.$pro->product_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text"></i></a>
            </td>
          </tr>
            @endforeach
        </tbody>
      </table>
    </div>
    <footer class="panel-footer">
      <div class="row">
          {!! $all_product->links('admin\custompaginate') !!}
      </div>
    </footer>
  </div>
</div>
</section>
@endsection
