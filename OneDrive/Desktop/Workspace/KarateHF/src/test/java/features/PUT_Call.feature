Feature: POST API call to create a user

Background: 
	* url 'https://gorest.co.in'
	* def requestPayload = 
"""
{
		 "name": "Surreyreddy5",
		 "status": "active"
}
"""
	
Scenario: Edit status of existing customer

Given path '/public/v1/users/481899'
And request requestPayload
And header Authorization = 'Bearer '+tokenID
When method PUT
Then status 200
Then print response

	* match $.data.status == 'active'
	* match $.data.name == 'Surreyreddy5'
