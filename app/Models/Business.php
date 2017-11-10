<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Business extends Model
{
    public $guarded = [];

    /**
     * Refresh or generate listing ID
     *
     * @return Model
     */
    public function refreshListingId()
    {
        $this->listing_id = 'SL'.str_pad($this->id, 6, '0', STR_PAD_LEFT);

        return $this;
    }
    
    public function transactionType()
    {
        return $this->belongsTo(\App\Models\TransactionType::class);
    }

    public function detail()
    {
        return $this->belongsTo(\App\Models\BusinessDetail::class);
    }

    public function transactionTypeDetail()
    {
        return $this->belongsTo(\App\Models\BusinessTransactionTypeDetail::class, 'transaction_type_detail_id');
    }

    public function images()
    {
        return $this->hasMany(\App\Models\BusinessImages::class);
    }

    public function status()
    {
        return $this->belongsTo(\App\Models\Status::class);
    }

    public function scopeActive($q)
    {
        return $q->where('is_active', 1);
    }
}
