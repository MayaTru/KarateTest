Feature: Get Address
  # for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background: 
    * url baseURL

  Scenario:
    Given path 'place/get/json'
    And param place_id = props.pid
    And param key = 'qaclick123'
    And header Content-Type = 'application/json'
    When method GET
    Then status 200
    And print response
    And def add_check = response.address
    And print add_check