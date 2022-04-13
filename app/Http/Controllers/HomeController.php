<?php

namespace App\Http\Controllers;

use App\Models\Category_product;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Auth;
use Database;

use Illuminate\Support\Facades\Redirect; //Thư viện trả về kết quả
session_start();


class HomeController extends Controller
{
	public function index()
	{

		$category = Category_product::where('category_status', '1')->orderby('category_id', 'asc')->get();
        $brand = DB::table('tbl_brand')->where('brand_status','1')->orderby('brand_id', 'asc')->get();
		$all_product = Product::where('product_status', '1')->orderby('product_id', 'asc')->paginate(6);
        $product_banner_newest = DB::table('tbl_product')
            ->where('product_status', '1' and 'cate')
            ->join('tbl_brand','tbl_brand.brand_id','=','tbl_product.brand_id')
            ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id')
            ->orderby('product_id', 'desc')
            ->first();
		//return view('pages.home', compact('category','all_product'));

		// $cate_product = DB::table('tbl_category_product')->where('category_status','1')->orderby('category_id','desc')->get();

		// $brand_product = DB::table('tbl_brand')->where('brand_status','1')->orderby('brand_id','desc')->get();  //

		// $all_product = DB::table('tbl_product')->where('product_status','1')->orderby('product_id','desc')->paginate(3);

		return view('pages.home')
            ->with('category',$category)
            ->with('all_product',$all_product)
            ->with('brand',$brand)
            ->with('product_banner_newest',$product_banner_newest)
            ;
	}
	public function search(Request $request)
	{
		$keywords = $request->keyword;

		$cate_product = DB::table('tbl_category_product')->where('category_status', '1')->orderby('category_id', 'desc')->get();
		// $brand_product = DB::table('tbl_brand')->where('brand_status','1')->orderby('brand_id','desc')->get();
        $brand = DB::table('tbl_brand')->where('brand_status','1')->orderBy('brand_id','asc')->get();
        $search_product = DB::table('tbl_product')->where('product_name', 'like', '%' . $keywords . '%')->paginate(7);
		return view('pages.sanpham.search')
            ->with('category', $cate_product)
            ->with('search_product', $search_product)
            ->with('brand', $brand)
            ->with('keywords',$keywords);
	}
}
