<?php 

namespace App\Repositories\Business;

use App\Models\BusinessTransactionTypeDetail;

interface BusinessContract 
{

    /**
     * Get all businesses matches the given filter
     *
     * @param array $filter
     * @return \Illuminate\Contracts\Pagination\LengthAwarePaginator
     */
    public function getAll(array $filter);

    /**
     * Get a business by id
     *
     * @param integer $id
     * @return boolean|Businness
     **/
    public function getById($id);

    /**
     * Get all business images by id
     *
     * @param integer $id
     * @param integer $width
     * @param integer $height
     * @return \Illuminate\Support\Collection
     **/
    public function getImagesByBusinessId($id, $width, $height);

    /**
     * Add a business
     *
     * @param array $data
     * @return boolean|Businness
     **/
    public function add(array $data);

    /**
     * Get fields for the giver transaction type id
     *
     * @param integer $id
     * @return array 
     */
    public function getFieldsByTransactionTypeId($id);

    /**
     * Parse the specific transaction type fields from details model
     *
     * @param integer $id
     * @param BusinessTransactionTypeDetail $details
     * @return array
     */
    public function getTransactionTypeFieldsAndValue($id, BusinessTransactionTypeDetail $details);
}
