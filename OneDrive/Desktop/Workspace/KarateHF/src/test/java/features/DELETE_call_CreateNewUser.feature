Feature: POST API call to create a user

Background: 
	* url 'https://gorest.co.in'
	* def requestPayload = 
	"""
	{
    "name": "preddy170",
    "email": "jsurrey170@gmail.com",
    "gender": "male",
    "status": "active"
	}
"""
#1. create new user
Scenario: Create new user with given data and authorization bearer

Given path '/public/v1/users'
And request requestPayload
And header Authorization = 'Bearer '+tokenID
When method POST
Then status 201
Then print response
And match $.data.id == '#present'

#fetch the user id from the response
	* def userId = $.data.id
	* print userId
	
	#2 Delete userId
	Given path '/public/v1/users' +userId
	And header Authorization = 'Bearer '+tokenID
	When method Delete
	Then status 204
	
	#3 get the same user with user id
	Given url baseUrl+'/public/v1/users' +userId
#	And path userId
	When method GET
	Then status 404