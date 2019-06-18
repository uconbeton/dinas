<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Unsur extends Model
{
    protected $table = 'unsur';
    public $timestamps = false;

    public function kuesioner(){
        return $this->hasMany('App\Kuesioner','id','unsur_id');
    }
}
