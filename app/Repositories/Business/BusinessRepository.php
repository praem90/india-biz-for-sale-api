<?php
namespace App\Repositories\Business;

use DB;
use App\Models\Image;
use App\Models\Address;
use App\Models\Business;
use App\Models\BusinessDetail;
use App\Models\BusinessImage;
use App\Models\BusinessTransactionTypeDetail;

use App\Events\BusinessWasAdded;

/**
* Business Repository to handle operations on Business Model
*/
class BusinessRepository implements BusinessContract
{
    /**
     * Get Business model with relations needed
     *
     * @return Business
     */
    protected function getModel()
    {
        return Business::with([
            'detail',
            'transactionTypeDetail',
            'transactionType',
            'status',
        ]);
    }

    /**
     * Get Businesses
     * 
     * @param array $filter
     * @return \Illuminate\Contracts\Pagination\LengthAwarePaginator
     */
    public function getAll(array $filter = [])
    {
        $model = $this->getModel();

        $data = $model->paginate(array_get($filter, 'limit', 5));
        return $this->formatData($data);
    }

    /**
     * Format response business model data
     * 
     * @param \IteratorAggregate $data
     * @return \IteratorAggregate
     */
    protected function formatData($data)
    {
        $data = $data->map(function ($business)
        {
            return $this->formatBusiness($business);
        });

        return $data; 
    }

    /**
     * Format Business model
     *
     * @param Business $business
     * @return Business
     */
    protected function formatBusiness($business)
    {
        $record['business'] = $business->getAttributes();
        $record['detail'] = $business->detail;
        $record['transaction_details'] = $this->getTransactionTypeFieldsAndValue(
            $business->transaction_type_id,
            $business->transactionTypeDetail
        );
        $record['status'] = $business->status;
        return $record;
    }

    /**
     * Add a business
     *
     * @param array $data
     * @return boolean|Businness
     **/
    public function add(array $data)
    {
        DB::beginTransaction();
        try{

            $detail = new BusinessDetail(array_get($data, 'details', []));
            $detail->status_id = 1;
            
            $address = new Address(array_get($data, 'address', []));
            
            $trans_type_details = new BusinessTransactionTypeDetail(
                array_get($data, 'transaction_type_details', [])
            );
            
            $trans_type_details->save();
            $address->save();
            
            $detail->address()->associate($address);
            $detail->save();

            $businesses = collect();

            foreach (array_get($data, 'business', []) as $business) {
                $business = new Business($business);
                $business->status_id = 1;
                $business->listing_id = $this->getTemporaryListingId();
                $business->detail()->associate($detail);
                $business->transactionTypeDetail()->associate($trans_type_details);
                $business->save();
                $businesses->push($business);
                event(new BusinessWasAdded($business));
            }

        } catch (\Exception $e) {
            DB::rollBack();
            return false;
        }
        
        DB::commit();

        return $this->formatData($business);
    }

    /**
     * Temporary Listing ID for business for the first time
     *
     * @return string
     */
    protected function getTemporaryListingId()
    {
        return str_slug(6);
    }

    /**
     * Get a business by id
     *
     * @param integer $id
     * @return boolean|Businness
     **/
    public function getById($id)
    {
        $business = $this->getModel()->find($id);

        return $business ? $this->formatBusiness($business) : false;
    }

    /**
     * Get all business images by id
     *
     * @param integer $id
     * @param integer $width
     * @param integer $height
     * @return \Illuminate\Support\Collection
     **/
    public function getImagesByBusinessId($id, $width, $height)
    {
        // TODO: Get images from database and dresize with image lib
        return collect();
    }

    /**
     * Get fields for the giver transaction type id
     *
     * @param integer $id
     * @return array 
     */
    public function getFieldsByTransactionTypeId($id)
    {
        return config('business.transaction_type.fields.'.$id, []);
    }

    /**
     * Parse the specific transaction type fields from details model
     *
     * @param integer $id
     * @param BusinessTransactionTypeDetail $details
     * @return array
     */
    public function getTransactionTypeFieldsAndValue($id, BusinessTransactionTypeDetail $details)
    {
        return array_only($details->toArray(), $this->getFieldsByTransactionTypeId($id));
    }
}