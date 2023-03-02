Feature: fetching User Details
 
Scenario: testing the get call for User Details
 
Given url 'https://gorest.co.in/public/v1/users/'
And path '679997'
When method GET
Then status 200
* print response
* def jsonResponse = response 
* print jsonResponse

* def actName = jsonResponse.data.name
* match actName == 'Miss Aditeya Kapoor'