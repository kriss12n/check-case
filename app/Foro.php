<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Foro extends Model
{
    protected $table = "Foro";



    public function user()
    {
        return $this->belongsTo('App\User')->withDefault();
    }


}



