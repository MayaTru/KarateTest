Feature: Add Address
  # for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background: 
    * url baseURL

	@Add_Address
  Scenario: Add_Address
    Given path 'place/add/json'
    And param key = 'qaclick123'
    And header Content-Type = 'application/json'
    And json payload_AddAddress = read('classpath:testData/AddAddressRequest.json')
    And request payload_AddAddress
    When method POST
    Then status 200
    And print responseHeaders
    And print responseHeaders.Date
    And print response
    And def pid = response.place_id
    And print pid