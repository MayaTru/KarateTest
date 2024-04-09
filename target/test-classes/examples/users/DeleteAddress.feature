Feature: Add Address
  # for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background: 
    * url baseURL
    * json j1 = datasource
    * def r1 = j1.slice(1,2)
    * print r1

	@Add_Address
  Scenario: Add_Address
    Given path 'place/delete/json'
    And param key = 'qaclick123'
    And header Content-Type = 'application/json'
    And json payload_DeleteAddress = read('classpath:testData/DeleteAddressRequest.json')
    And replace payload_DeleteAddress
    	|token						|value				|
    	|{{toReplacePID}} |props.pid		|
    And request payload_DeleteAddress
    When method DELETE
    Then status 200
    And match response.status == "OK"
    
    