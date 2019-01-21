<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Doc extends Model
{
    public function contact() {
        return $this->belongsTo('App\Contact');
    }
}
