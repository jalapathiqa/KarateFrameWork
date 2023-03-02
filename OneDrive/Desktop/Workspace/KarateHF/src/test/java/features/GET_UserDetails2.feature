Feature: fetching User Details
 
Scenario: testing the get call for User Details
 
Given url 'https://gorest.co.in/public/v2/users'
And path '458590'
When method GET
Then status 200
Then print response
* def actId = response.id
* def actName = response.name
* def actEmail = response.email
* def actGender = response.gender
* def actStatus = response.status

* match actId == 458590
* match actName == 'Amritambu Asan IV'
* match actEmail == 'amritambu_iv_asan@bergnaum-kris.co'
* match actGender == 'female'
* match actStatus == 'inactive'

Scenario: testing the get call for User Details - user not found
 
Given url baseUrl+'/public/v2/users'
And path 'Trivedi'
When method GET
Then status 404
* print response