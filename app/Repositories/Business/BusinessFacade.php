<?php 

namespace App\Repositories\Business;

use Illuminate\Support\Facades\Facade;

/**
 * Facade to access Business Repo
 */
class BusinessFacade extends Facade
{

    /**
     * Get the registered name of the component.
     *
     * @return string
     */
    protected static function getFacadeAccessor()
    {
        return '\App\Repositories\Business\BusinessRepository';
    }
}
