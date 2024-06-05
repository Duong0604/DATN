<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class promotions extends Model
{
    //
    protected $table = 'promotions';
    public function promo_type(){
    	return $this->belongsTo('App\promo_type','id_type_promo','id');
    }
}
