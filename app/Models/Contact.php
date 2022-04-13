<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
	public $timestamps = false;
	protected $fillabe = [
		'contact_name', 'contact_phone', 'contact_email', 'contact_address'
	];

	protected $primaryKey = 'contact_id';
    protected $table = "tbl_contact";
}
