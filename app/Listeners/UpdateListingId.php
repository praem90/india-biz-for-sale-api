<?php

namespace App\Listeners;

use App\Events\BusinessWasAdded;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class UpdateListingId
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  BusinessWasAdded  $event
     * @return void
     */
    public function handle(BusinessWasAdded $event)
    {
        $event->business->refreshListingId()->save();
    }
}
