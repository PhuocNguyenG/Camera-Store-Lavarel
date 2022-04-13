@extends('admin_layout')
@section('admin_content')
<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê thông tin liên hệ
    </div>
    <div class="row w3-res-tb">
      <div class="col-sm-4">
      </div>
      <div class="col-sm-3">
        <div class="input-group">
          <input type="text" class="input-sm form-control" placeholder="Search">
          <span class="input-group-btn">
            <button class="btn btn-sm btn-default" type="button">Tìm!</button>
          </span>
        </div>
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
            <th>Tên cửa hàng</th>
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Địa chỉ</th>

            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
            @foreach($all_contact as $key => $cont)
          <tr>
            <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
            <td>{{ $cont->contact_name}}</td>
			<td>{{ $cont->contact_phone}}</td>
            <td>{{ $cont->contact_email}}</td>
            <td>{{ $cont->contact_address}}</td>


            <td>
              <a href="{{URL('/edit-contact/'.$cont->contact_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active"></i></a>
               <a onclick="return confirm('Bạn có chắc chắn muốn xóa thông tin liên hệ này?')" href="{{URL('/delete-contact/'.$cont->contact_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text"></i></a>
            </td>
          </tr>
            @endforeach
        </tbody>
      </table>
    </div>
    <footer class="panel-footer">
      <div class="row">
{{--        <div class="col-sm-7 text-right text-center-xs">--}}
{{--          <ul class="pagination pagination-sm m-t-none m-b-none">--}}
{{--            <li><a href=""><i class="fa fa-chevron-left"></i></a></li>--}}
{{--            <li><a href="">1</a></li>--}}
{{--            <li><a href="">2</a></li>--}}
{{--            <li><a href="">3</a></li>--}}
{{--            <li><a href="">4</a></li>--}}
{{--            <li><a href=""><i class="fa fa-chevron-right"></i></a></li>--}}
{{--          </ul>--}}
{{--        </div>--}}
      </div>
    </footer>
  </div>
</div>
</section>
@endsection
