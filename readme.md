<p align="center"><img src="https://img-az.indiabizforsale.com/business/images/logo@2x.png"></p>


## Installation

Laravel 5.5 requires PHP version must be >= 7.0.0. <a target="_blank"  href="https://laravel.com/docs/5.1/#installation">Click here</a> to know more.

&bullet; Clone this repo and install dependenties using composer
```
git clone https://github.com/praem90/india-biz-for-sale-api.git
cd india-biz-for-sale-api
composer install
```

&bullet; Rename .env.example to .env and update the database credentials
```
DB_HOST=127.0.0.1
DB_DATABASE=india_biz_for_sale
DB_USERNAME=root
DB_PASSWORD=
```
&bullet; Generate the secure hash key by the following artisan cmd
```
php artisan key:generate
```
&bullet; Import development database sql into database. You can find in `./database/india_biz_for_sale.sql`.
&bullet; Finally run dev server by,
```
php artisan serve
```

## API

### Get Businesses
To get list of businesses. The response would be Laravel Length Aware paginator json. <a href="https://laravel.com/docs/5.5/pagination#displaying-pagination-results">know more</a>.
```
GET: /api/business/all
```
<table>
<thead>
<tr>
    <th>Param</th>
    <th>Type</th>
    <th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>page</td>
<td>int</td>
<td>To get the nth page <br>
`1` Default 
<br>(optional)
</td>
</tr>
<tr>
<td>limit</td>
<td>int</td>
<td>Number of businesses per page<br>
`5` Default<br>
(optional)
</td>
</tr>
</tbody>
</table>

### Add a Business
```
POST: api/business/add
```

Sample post json data
```
{
    "business": [
        // Multiple Transaction type for the same Business
        {
            "transaction_type_id": 2,
            "title": "Test",
            "description": "Desc",
            "ticket_size_min": 1000,
            "ticket_size_max": 10000
        }
    ],
    "details": {
        "owner_id": 1,
        "industry_id": 1,
        "business_type_id": 1,
        "year_of_found": 1990,
        "reason": "Sale",
        "last_year_turnover": 100000,
        "last_year_profit": 10000,
        "ebtia": 1000000
    },

    // All transaction type specific fields 
    "transaction_type_details": {
        "company_reputation": "Reputed",
        "licensing_fee": 120000
    },
    "address": {
        "line1": "LH Nagar",
        "line2": "Guindy",
        "location_id": 1
    }
}
```