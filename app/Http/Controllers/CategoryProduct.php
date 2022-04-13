<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect; //Thư viện trả về kết quả
session_start();

use App\Models\Product;
use App\Models\Brand;
use App\Models\Category_product;

class CategoryProduct extends Controller
{
    public function add_category_product()
    {
    	return view('admin.add_category_product');
    }

    public function all_category_product()
    {
    	$all_category_product = DB::table('tbl_category_product')->get();
    	$manager_category_product = view('admin.all_category_product')->with('all_category_product',$all_category_product);
    	return view('admin_layout')->with('admin.all_category_product',$manager_category_product);
    }

    public function save_category_product(Request $Request)
    {
    	$data = array();
    	$data['category_name'] = $Request->category_product_name;
    	$data['category_desc'] = $Request->category_product_desc;
    	$data['category_status'] = $Request->category_product_status;

    	DB::table('tbl_category_product')->insert($data);
    	Session::put('message','Thêm danh mục sản phẩm thành công!');
    	return Redirect('add-category-product');
    }

	public function active_category_product($category_product_id)
    {
    	DB::table('tbl_category_product')->where('category_id',$category_product_id)->update(['category_status'=>0]);
    	Session::put('message','không hiển thị sản phẩm thành công!');
    	return Redirect('all-category-product');
    }
    public function unactive_category_product($category_product_id)
    {
    	DB::table('tbl_category_product')->where('category_id',$category_product_id)->update(['category_status'=>1]);
    	Session::put('message','Hiển thị sản phẩm thành công!');
    	return Redirect('all-category-product');
    }
    public function edit_category_product($category_product_id)
    {
    	$edit_category_product = DB::table('tbl_category_product')->where('category_id',$category_product_id)->get();
    	$manager_category_product = view('admin.edit_category_product')->with('edit_category_product',$edit_category_product);
    	return view('admin_layout')->with('admin.edit_category_product',$manager_category_product);
    }

    public function update_category_product(Request $Request,$category_product_id)
    {
    	$data = array();
    	$data['category_name'] = $Request->category_product_name;
    	$data['category_desc'] = $Request->category_product_desc;
    	$data['category_status'] = $Request->category_product_status;
    	DB::table('tbl_category_product')->where('category_id',$category_product_id)->update($data);
    	Session::put('message','Cập nhật danh mục sản phẩm thành công!');
    	return Redirect('all-category-product');
    }

    public function delete_category_product($category_product_id)
    {
        DB::table('tbl_category_product')->where('category_id',$category_product_id)->delete();
        Session::put('message','Xóa danh mục sản phẩm thành công!');
        return Redirect('all-category-product');
    }


    //Danh mục sản phẩm trang index
    public function show_category_home($category_id)
    {
        $category_product = DB::table('tbl_category_product')->where('category_status','1')->orderby('category_id','desc')->get();
        $brand_product = DB::table('tbl_brand')->where('brand_status','1')->orderby('brand_id','desc')->get();
        $category_by_id =DB::table('tbl_product')->join('tbl_category_product','tbl_product.category_id','=','tbl_category_product.category_id')->where('tbl_product.category_id',$category_id)->get();
        $category_name = DB::table('tbl_category_product')->where('tbl_category_product.category_id',$category_id)->first();

        return view('pages.category.show_category')
            ->with('category',$category_product)
            ->with('brand',$brand_product)
            ->with('category_by_id',$category_by_id)
            ->with('category_name',$category_name);


        // $category_product = Category_product::where('category_status','1')->orderby('category_id','desc')->get();
        // $brand_product = Brand::where('brand_status','1')->orderby('brand_id','desc')->get();
        // $category_by_id =Product::join('tbl_category_product','tbl_product.category_id','=','tbl_category_product.category_id')->where('tbl_product.category_id',$category_id)->get();

        // $category_name = Category_product::where('tbl_category_product.category_id',$category_id)->first();

        // return view('pages.category.show_category',compact('category_product','brand_product','category_by_id','category_name'));
    }

}

