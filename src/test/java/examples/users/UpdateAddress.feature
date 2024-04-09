Feature: Add Address
  # for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background: 
    * url baseURL

	@Add_Address
  Scenario: Add_Address
    Given path 'place/update/json'
    And param place_id = props.pid
    And param key = 'qaclick123'
    And header Content-Type = 'application/json'
    And json payload_UpdateAddress = read('classpath:testData/UpdateAddressRequest.json')
    And replace payload_UpdateAddress
    	|token						|value				|
    	|{{toReplacePID}} |props.pid		|
    And request payload_UpdateAddress
    When method PUT
    Then status 200
    And match response.msg == "Address successfully updated"