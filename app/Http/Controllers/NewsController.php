<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Category_product;
use App\Models\Product;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect; //Thư viện trả về kết quả
session_start();

class NewsController extends Controller
{
    //admin
	public function add_news()
	{
		return view('admin.add_news');
	}
	public function all_news()
	{
		$all_news = DB::table('tbl_news')->get();
    	$manager_news = view('admin.all_news')->with('all_news',$all_news);
    	return view('admin_layout')->with('admin.all_news',$manager_news);
	}

    public function save_news(Request $Request)
    {

        $data = array();
    	$data['news_title'] = $Request->news_title;
    	$data['news_content'] = $Request->news_content;
    	$data['news_status'] = $Request->news_status;


    	$get_image = $Request->file('news_image');
    	if($get_image)
    	{
    		$get_name_image = $get_image->getClientOriginalName();
    		$name_image = current(explode('.',$get_name_image));
    		$new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
    		$get_image->move('public/uploads/news',$new_image);
    		$data['news_image'] = $new_image;
    		DB::table('tbl_news')->insert($data);
    		Session::put('message','Thêm sản phẩm thành công!');
    		return Redirect('all-news');
    	}
    	else
    	{
    	$data['news_image'] = $Request->news_image;
    	DB::table('tbl_news')->insert($data);
    	Session::put('message','Thêm sản phẩm thành công!');

    	return Redirect('all-news');
    	}

    }
    public function active_news($news_id)
    {
    	News::where('news_id',$news_id)->update(['news_status'=>0]);
    	Session::put('message','Không hiển thị tin tức thành công!');
    	return Redirect('all-news');
    }
    public function unactive_news($news_id)
    {
    	News::where('news_id',$news_id)->update(['news_status'=>1]);
    	Session::put('message','Hiển thị tin tức thành công!');
    	return Redirect('all-news');
    }

    public function edit_news($news_id)
    {

    	$edit_news = DB::table('tbl_news')->where('news_id',$news_id)->get();
    	$manager_news = view('admin.edit_news')->with('edit_news',$edit_news);
    	return view('admin_layout')->with('admin.edit_news',$manager_news);
    }

    public function update_news(Request $Request,$news_id)
    {
    	$data = array();
		$data['news_title'] = $Request->news_title;
    	$data['news_content'] = $Request->news_content;
    	$data['news_status'] = $Request->news_status;


    	$get_image = $Request->file('news_image');
    	if($get_image)
    	{
    		$get_name_image = $get_image->getClientOriginalName();
    		$name_image = current(explode('.',$get_name_image));
    		$new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
    		$get_image->move('public/uploads/news',$new_image);
    		$data['news_image'] = $new_image;
    		DB::table('tbl_news')->where('news_id',$news_id)->update($data);
    		Session::put('message','Cập nhật tin tức thành công!');
    		return Redirect('all-news');
    	}

    	DB::table('tbl_news')->where('news_id',$news_id)->update($data);
    	Session::put('message','Cập nhật tin tức thành công!');
    	return Redirect('all-news');
    }

    public function delete_news($news_id)
    {
        DB::table('tbl_news')->where('news_id',$news_id)->delete();
        Session::put('message','Xóa tin tức thành công!');
        return Redirect('all-news');
    }


    //client
    public function news_all()
    {
        $show_news = DB::table('tbl_news')
            ->where('news_status','1')
            ->orderby('news_id','desc')
            ->paginate(4);
        $category = Category_product::where('category_status','1')->orderby('category_id','desc')->get();
        $all_product = Product::where('product_status','1')->orderby('product_id','desc')->get();
        $brand = DB::table('tbl_brand')->where('brand_status','1')->orderBy('brand_id','asc')->get();

        return view('pages.news.news_all')
        ->with('category', $category)
        ->with('all_product', $all_product)
        ->with('brand', $brand)
        ->with('show_news',$show_news);
    }
    public function news_detail($news_id)
    {
        $show_news = News::where('news_id',$news_id)->get();
        $category = Category_product::where('category_status','1')->orderby('category_id','asc')->get();
        $brand = DB::table('tbl_brand')->where('brand_status','1')->orderBy('brand_id','asc')->get();
        $all_product = Product::where('product_status','1')->orderby('product_id','desc')->get();


        return view('pages.news.news',compact('show_news','category','all_product','brand'));
    }
}
