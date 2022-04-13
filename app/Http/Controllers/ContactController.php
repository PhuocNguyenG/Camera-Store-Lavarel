<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect; //Thư viện trả về kết quả
session_start();

use App\Models\Category_product;
use App\Models\Product;


class ContactController extends Controller
{
    //admin
    public function add_contact()
	{
		return view('admin.add_contact');
	}
	public function all_contact()
	{
		$all_contact = Contact::all();
    	return view('admin.all_contact',compact('all_contact'));
	}
	public function save_contact(Request $Request)
    {
    	$contact = new Contact;
    	$contact->contact_name = $Request->contact_name;
    	$contact->contact_phone = $Request->contact_phone;
    	$contact->contact_email = $Request->contact_email;
    	$contact->contact_address = $Request->contact_address;
    	$contact->save();
    	Session::put('message','Thêm liên hệ thành công!');
    	return Redirect('all-contact');
    }

    public function edit_contact($contact_id)
    {


    	$edit_contact = Contact::where('contact_id',$contact_id)->get();
    	return view('admin.edit_contact',compact('edit_contact'));
    }

    public function update_contact(Request $Request,$contact_id)
    {
    	$contact = Contact::find($contact_id);
    	$contact->contact_name = $Request->contact_name;
    	$contact->contact_phone = $Request->contact_phone;
    	$contact->contact_email = $Request->contact_email;
    	$contact->contact_address = $Request->contact_address;

    	$contact->save();
    	Session::put('message','Cập nhật liên hệ thành công!');
    	return Redirect('all-contact');
    }

    public function delete_contact($contact_id)
    {
        $contact = Contact::find($contact_id);
        $contact->delete();
        Session::put('message','Xóa liên hệ thành công!');
        return Redirect('all-contact');
    }

    //client
    public function contact()
    {
        $show_contact = Contact::all();
        $category = Category_product::where('category_status','1')->orderby('category_id','asc')->get();
        $brand = DB::table('tbl_brand')->where('brand_status','1')->orderBy('brand_id','asc')->get();
        $all_product = Product::where('product_status','1')->orderby('product_id','desc')->get();


        return view('pages.contact.contact',
            compact('category','all_product','show_contact','brand'));
    }

}
