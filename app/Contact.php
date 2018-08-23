<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
	//adding relation that each contact belong to one user
	public function user(){
		return $this->belongsTo('App\User');
	}
}
