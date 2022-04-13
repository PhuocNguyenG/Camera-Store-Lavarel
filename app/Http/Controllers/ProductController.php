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

class ProductController extends Controller
{
    public function add_product()
    {
    	$cate_product = DB::table('tbl_category_product')->orderby('category_id','desc')->get();
    	$brand_product = DB::table('tbl_brand')->orderby('brand_id','desc')->get();
    	return view('admin.add_product')->with('cate_product',$cate_product)->with('brand_product',$brand_product);
    }

    public function all_product()
    {
        $all_product = DB::table('tbl_product')
            ->join('tbl_brand','tbl_brand.brand_id','=','tbl_product.brand_id')
            ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id')
            ->orderby('tbl_product.product_id','desc')->paginate(10);

        // $all_product->($cate,'=','category_id')->($bra,'=','brand_id')->orderby('product_id')->get();
        //  $manager_product = view('admin.all_product')->with('all_product',$all_product);

     //    ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id')
    	//  ->join('tbl_brand','tbl_brand.brand_id','=','tbl_product.brand_id')
    	// ->orderby('tbl_product.product_id')->get();
    	//  $manager_product = view('admin.all_product')->with('all_product',$all_product);

        return view('admin.all_product',compact('all_product'));
        //return view('admin_layout')->with('admin.all_product',$manager_product);
    }

    public function save_product(Request $Request)
    {
    	$data = array();
    	$data['product_name'] = $Request->product_name;
    	$data['product_price'] = $Request->product_price;
    	$data['product_desc'] = $Request->product_desc;
    	$data['product_content'] = $Request->product_content;
    	$data['category_id'] = $Request->product_cate;
    	$data['brand_id'] = $Request->product_brand;
    	$data['product_status'] = $Request->product_status;

    	$get_image = $Request->file('product_image');
    	if($get_image)
    	{
    		$get_name_image = $get_image->getClientOriginalName();
    		$name_image = current(explode('.',$get_name_image));
    		$new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
    		$get_image->move('public/uploads/products',$new_image);
    		$data['product_image'] = $new_image;
    		DB::table('tbl_product')->insert($data);
    		Session::put('message','Thêm sản phẩm thành công!');
    		return Redirect('all-product');
    	}
    	$data['product_image'] = '';
    	DB::table('tbl_product')->insert($data);
    	Session::put('message','Thêm sản phẩm thành công!');
    	return Redirect('all-product');
    }

	public function active_product($product_id)
    {
    	DB::table('tbl_product')->where('product_id',$product_id)->update(['product_status'=>0]);
    	Session::put('message','Không hiển thị sản phẩm thành công!');
    	return Redirect('all-product');
    }
    public function unactive_product($product_id)
    {
    	DB::table('tbl_product')->where('product_id',$product_id)->update(['product_status'=>1]);
    	Session::put('message','Hiển hiệu sản phẩm thành công!');
    	return Redirect('all-product');
    }
    public function edit_product($product_id)
    {
    	$cate_product = DB::table('tbl_category_product')->orderby('category_id','desc')->get();
    	$brand_product = DB::table('tbl_brand')->orderby('brand_id','desc')->get();

    	$edit_product = DB::table('tbl_product')->where('product_id',$product_id)->get();
    	$manager_product = view('admin.edit_product')->with('edit_product',$edit_product)->with('cate_product',$cate_product)
    	->with('brand_product',$brand_product);
    	return view('admin_layout')->with('admin.edit_product',$manager_product);
    }

    public function update_product(Request $Request,$product_id)
    {
    	$data = array();
		$data['product_name'] = $Request->product_name;
    	$data['product_price'] = $Request->product_price;
    	$data['product_desc'] = $Request->product_desc;
    	$data['product_content'] = $Request->product_content;
    	$data['category_id'] = $Request->product_cate;
    	$data['brand_id'] = $Request->product_brand;
    	$data['product_status'] = $Request->product_status;

    	$get_image = $Request->file('product_image');
    	if($get_image)
    	{
    		$get_name_image = $get_image->getClientOriginalName();
    		$name_image = current(explode('.',$get_name_image));
    		$new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
    		$get_image->move('public/uploads/products',$new_image);
    		$data['product_image'] = $new_image;
    		DB::table('tbl_product')->where('product_id',$product_id)->update($data);
    		Session::put('message','Cập sản phẩm thành công!');
    		return Redirect('all-product');
    	}

    	DB::table('tbl_product')->where('product_id',$product_id)->update($data);
    	Session::put('message','Cập nhật sản phẩm thành công!');
    	return Redirect('all-product');
    }

    public function delete_product($product_id)
    {
        DB::table('tbl_product')->where('product_id',$product_id)->delete();
        Session::put('message','Xóa sản phẩm thành công!');
        return Redirect('all-product');
    }

    //client

    //Chi tiết sản phẩm
    public function details_product($product_id)
    {
        $category = Category_product::where('category_status','1')->orderby('category_id','desc')->get();
        $brand = Brand::where('brand_status','1')->orderby('brand_id','desc')->get();
        $details_product = Product::where('tbl_product.product_id',$product_id)
            ->join('tbl_brand','tbl_brand.brand_id','=','tbl_product.brand_id')
            ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id')
            ->get();


        // return view('pages.sanpham.show_details')->with('category',$cate_product)->with('brand',$brand_product);
        return view('pages.sanpham.show_details',compact('category','brand','details_product'));
    }
    public function productPages_all()
    {
        $all_product = DB::table('tbl_product')
            ->where('product_status','1')
            ->orderby('tbl_product.product_id','desc')->paginate(8);

        $brand = DB::table('tbl_brand')->where('brand_status','1')->orderBy('brand_id','asc')->get();
        $category = DB::table('tbl_category_product')->where('category_status','1')->orderBy('category_id','asc')->get();
        // $all_product->($cate,'=','category_id')->($bra,'=','brand_id')->orderby('product_id')->get();
        //  $manager_product = view('admin.all_product')->with('all_product',$all_product);

        //    ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id')
        //  ->join('tbl_brand','tbl_brand.brand_id','=','tbl_product.brand_id')
        // ->orderby('tbl_product.product_id')->get();
        //  $manager_product = view('admin.all_product')->with('all_product',$all_product);

        return view('pages.sanpham.product_all',compact('all_product','brand','category'));
        //return view('admin_layout')->with('admin.all_product',$manager_product);
    }
    public function productPages_brand($brand_id)
    {
        $all_product = DB::table('tbl_product')
            ->where('product_status','1')
            ->where('tbl_product.brand_id',$brand_id)
            ->orderby('tbl_product.product_id','desc')->paginate(8);
        $filter_cate_value = 0;
        $filter_brand_value = $brand_id;
        $brand = DB::table('tbl_brand')->where('brand_status','1')->orderBy('brand_id','asc')->get();
        $category = DB::table('tbl_category_product')->where('category_status','1')->orderBy('category_id','asc')->get();

        return view('pages.sanpham.product_all',
            compact('all_product','brand','category','filter_cate_value','filter_brand_value'));
    }
    public function productPages_brand_cate($brand_id,$cate_id)
    {
        $all_product = DB::table('tbl_product')
            ->where('product_status','1')
            ->where('tbl_product.brand_id',$brand_id)
            ->where('tbl_product.category_id',$cate_id)
            ->orderby('tbl_product.product_id','desc')->paginate(8);
        $filter_cate_value = $cate_id;
        $filter_brand_value = $brand_id;
        $brand = DB::table('tbl_brand')->where('brand_status','1')->orderBy('brand_id','asc')->get();
        $category = DB::table('tbl_category_product')->where('category_status','1')->orderBy('category_id','asc')->get();

        return view('pages.sanpham.product_all',
            compact('all_product',
                'brand',
                'category',
                'filter_cate_value',
                'filter_brand_value'));
    }
}
