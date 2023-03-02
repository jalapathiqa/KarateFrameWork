Feature: GET API header feature
 
Scenario: Pass the user request with headers
Given header Date = 'Sat, 18 Feb 2023 08:23:47 GMT'
And header Content-Type = 'application/json; charset=utf-8'
And header Connection = 'keep-alive'
* def query = {id:459060}
When url baseUrl+'/public/v1/users/'
And params query 
When method GET
Then status 200
* print response
* def jsonResponse = response 
* print jsonResponse

Scenario: Pass the user request with headers-part2
* def request_headers = {Date : 'Sat, 18 Feb 2023 08:23:47 GMT', Content-Type: 'application/json; charset=utf-8', Connection : 'keep-alive'}
* def query = {id:459060}
Given headers request_headers
When url baseUrl+'/public/v1/users/'
And params query 
When method GET
Then status 200
* print response
* def jsonResponse = response 
* print jsonResponse

Scenario: Pass the user request with headers-part3
* configure headers = {Date : 'Sat, 18 Feb 2023 08:23:47 GMT', Content-Type: 'application/json; charset=utf-8', Connection : 'keep-alive'}
* def query = {id:459060}
When url baseUrl+'/public/v1/users/'
And params query 
When method GET
Then status 200
* print response
* def jsonResponse = response 
* print jsonResponse
