<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category_product extends Model
{
    protected $table = "tbl_category_product";

    public function product()
    {
    	return $this->hasMany('App\Models\Product','category_id','category_id');
    }
}
