Feature: Admin users process

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def userStructure = read(structUser.json)

  @addNewUser
  Scenario: Add new user
    Given path 'user'
    When method POST
    Then status 200

  @findsUserSuccessfully
  Scenario: Find user successfully
    Given path 'user', 1
    When method GET
    Then status 200
