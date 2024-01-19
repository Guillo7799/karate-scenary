Feature: Admin users process

  Background:
    * url 'https://petstore.swagger.io/v2'
    #* request {"id":<id>, "username":<username>, "firstName": <firstName>, "lastName":<lastName>, "email":<email>, "password":<password>, "phone":<phone>, "userStatus":<userStatus>}
    * def userStructure = read("structUser.json")
    * def file = read('userData.json')
    * def username = file.username

  @addNewUser
  Scenario: Create users
    * def file = read('userData.json')
    * print file
    #* match $ == code[200]
    Given path 'user'
    When def file = read('userData.json')
    And request file
    And method POST
    #Then request
    Then status 200
    And match $.code == 200
    * def code = response.code
    * print username
    * print "code was successful", code


  @findUserSuccessfully
  Scenario: Find user successfully
    Given path 'user', username
    When method GET
    Then status 200

  @updateDatesUser
  Scenario: Update name and email user
    * copy file = read('userData.json')
    Given path 'user', username
    Then request {"firstName":"sonic", "email":"sonic@prueba.com"}
    When method PUT
    Then status 200
    #And match

  @finUserUpdated
  Scenario: Find user updated successfully
    Given path 'user', username
    When method GET
    Then status 200

  @deleteUser
  Scenario: Delete created user
    Given path 'user', username
    When method DELETE
    Then status 200