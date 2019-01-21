<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Field extends Model
{
    protected $fillable = ['name', 'type', 'value'];

    public function contacts() {
        return $this->belongsToMany('App\Models\Contact')->withPivot('value');
    }
}
