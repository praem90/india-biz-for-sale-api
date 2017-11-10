<?php

return [

    /**
     * Business Fields based on Transaction Type
     TODO: 
     - Load these from Database
     */

    'transaction_type' => [
        'fields' => [
            1 => [
                'company_reputation',
                'number_of_directors',
                'legal_entity_information',
            ],
            2 => [
                'franchise_name',
                'licensing_fee',
                'royaltee_fee',
            ],
            3 => [
                'asset_type_id',
                'market_value',
            ],
        ],
    ],
];
