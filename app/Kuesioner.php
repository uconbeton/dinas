<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kuesioner extends Model
{
    protected $table = 'kuesioner';
    public $timestamps = false;

    public function tahapan()
    {
        return $this->belongsTo('App\Tahapan','tahapan_id','id');
    }

    public function unsur()
    {
        return $this->belongsTo('App\Unsur','unsur_id','id');
    }
}
