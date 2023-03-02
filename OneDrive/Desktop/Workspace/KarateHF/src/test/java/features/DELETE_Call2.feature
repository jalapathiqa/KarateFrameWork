Feature: delete call
Scenario: Deleting existing user

Given url 'https://gorest.co.in/public/v1/users/483001'
And header Authorization = 'Bearer '+tokenID
When method Delete
Then status 204
