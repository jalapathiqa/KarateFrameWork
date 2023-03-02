Feature: GET API using Autherization 

Scenario: get user details using Authorization Bearer 
Given header Authorization = 'Bearer '+ tokenID

Given url baseUrl+'/public/v1/users'
When method GET
Then status 200
Then print response