<?php
namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
/**
* Add business form request to handle validation
*/
class AddBusinessRequest extends FormRequest
{
    
    function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'business.*.transaction_type_id' => 'required|exists:transaction_types,id',
            'business.*.title' => 'required|string',
            'business.*.description' => 'required|string',
            'business.*.ticket_size_min' => 'required|integer',
            'business.*.ticket_size_max' => 'required|integer',
            'details.owner_id' => 'required|exists:users,id',
            'details.industry_id' => 'required|exists:industries,id',
            'details.business_type_id' => 'required|exists:business_types,id',
            'details.year_of_found' => 'required|digits:4|date_format:"Y"|max:'.date('Y'),
            'details.reason' => 'required|string',
            'details.last_year_turnover' => 'required|integer',
            'details.last_year_profit' => 'required|integer',
            'details.ebtia' => 'required|integer',
            'transaction_type_details' => 'required|array',
            'address.line1' => 'required|string',
            'address.line2' => 'required|string',
            'address.location_id' => 'required|integer|exists:locations,id',
        ];
    }
}