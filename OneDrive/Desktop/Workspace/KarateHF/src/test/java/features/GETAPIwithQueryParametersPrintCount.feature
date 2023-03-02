Feature:  GET API with query parameters
Scenario: get all active users only
* def query = {status: 'inactive', gender:'male'}
Given url baseUrl+'/public/v1/users'
And params query
When method GET
Then status 200
Then print response
* def jsonResponse = response
* def userCount = jsonResponse.data.length
Then print userCount

* match userCount == 10