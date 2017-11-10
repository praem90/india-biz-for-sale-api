<?php

namespace App\Events;

use App\Models\Business;
use Illuminate\Queue\SerializesModels;
use Illuminate\Foundation\Events\Dispatchable;

class BusinessWasAdded
{
    use Dispatchable, SerializesModels;

    public $business;

    /**
     * Create a new event instance.
     *
     * @param Business $business
     * @return void
     */
    public function __construct(Business $business)
    {
        $this->business = $business;
    }
}
