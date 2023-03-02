Feature:  GET API with query parameters
Scenario: get all active users only
* def query = {status: 'inactive', gender:'male', id:459060}
Given url baseUrl+'/public/v1/users'
And params query
When method GET
Then status 200
Then print response
