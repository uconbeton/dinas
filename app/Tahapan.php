<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tahapan extends Model
{
    protected $table = 'tahapan';
    public $timestamps = false;

    public function kuesioner(){
        return $this->hasMany('App\Kuesioner','id','tahapan_id');
    }
}
