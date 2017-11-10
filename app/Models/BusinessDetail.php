<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BusinessDetail extends Model
{
    public $guarded = [];

    public function owner()
    {
        return $this->belongsTo(\App\Models\User::class, 'owner_id');
    }

    public function industry()
    {
        return $this->belongsTo(\App\Models\Industry::class);
    }

    public function businessType()
    {
        return $this->belongsTo(\App\Models\BusinessType::class);
    }

    public function address()
    {
        return $this->belongsTo(\App\Models\Address::class);
    }

    public function verificationStatus()
    {
        return $this->belongsTo(\App\Models\VerificationStatus::class);
    }

    public function status()
    {
        return $this->belongsTo(\App\Models\Status::class);
    }

    public function scopeActive($q)
    {
        return $q->where('status_id', 1);
    }
}
