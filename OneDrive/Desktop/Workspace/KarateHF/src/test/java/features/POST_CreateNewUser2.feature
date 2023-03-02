Feature: POST API call to create a user

Background: 
	* url 'https://gorest.co.in'
	* def requestPayload = 
	"""
	{
    "name": "J reddy5",
    "email": "jsurrey5@gmail.com",
    "gender": "male",
    "status": "active"
	}
"""
Scenario: Create new user with given data and authorization bearer

Given path '/public/v1/users'
And request requestPayload
And header Authorization = 'Bearer '+tokenID
When method POST
Then status 201
Then print response

	* match $.data.id == '#present'
		* match $.data.email == '#present'
			* match $.data.gender == '#present'
				* match $.data.status == '#present'