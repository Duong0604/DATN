<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class promo_type extends Model
{
    //
    protected $table = 'promo_type';
    public function promotions()
    {
        return $this->hasMany('App\promotions','id_type_promo','id');
    }
}
