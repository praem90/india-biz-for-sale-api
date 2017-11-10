<?php

namespace App\Http\Controllers;

use Business;
use Illuminate\Http\Request;
use App\Http\Requests\AddBusinessRequest;

class BusinessController extends Controller
{
    /**
     * Get All Businesses
     *
     * @param AddBusinessRequest $request
     * @return response
     */
    public function getAll(Request $request)
    {
        $business = Business::getAll($request->all());

        return $business;
    }

    /**
     * Add Business Model
     *
     * @param AddBusinessRequest $request
     * @return response
     */
    public function add(AddBusinessRequest $request)
    {
        $business = Business::add($request->all());

        if ($business) {
            return $business;
        }

        return response()->json([
            'message' => "Something went wrong"
        ], 412);
    }
}
