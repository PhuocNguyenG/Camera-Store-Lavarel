<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
	public $timestamps = false;
	protected $fillabe = [
		'new_title', 'news_content', 'news_image', 'news_status'
	];

	protected $primaryKey = 'news_id';
    protected $table = "tbl_news";

}
