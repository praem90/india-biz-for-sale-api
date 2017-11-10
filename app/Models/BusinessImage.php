<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BusinessImage extends Model
{
    use SoftDeletes;
    
    public $timestamps = false;

    public function business()
    {
        return $this->belongsTo(\App\Models\Business::class);
    }

    public function image()
    {
        return $this->belongsTo(\App\Models\Image::class);
    }
}
