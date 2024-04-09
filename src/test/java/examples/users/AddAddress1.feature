Feature: Add Address
  # for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background: 
    * url baseURL

	@Add_Address
  Scenario: Add_Address
    Given path 'place/add/json'
    And param key = 'qaclick123'
    And header Content-Type = 'application/json'
    And json payload_AddAddress = read('classpath:testData/AddAddressRequest1.json')
    And replace payload_AddAddress
    	|token				|value						|
    	|"{{toLat}}"	|r1.location_lat	|
    	|"{{tolng}}"	|r1.location_lng	|
    	|"{{toAcc}}"	|r1.accuracy			|
    	|{{toName}}		|r1.name					|
    	|{{toPN}}			|r1.phone_number	|
    	|{{toAdd}}		|r1.address				|
    	|{{toWeb}}		|r1.website				|
    	|{{toLang}}		|r1.language			|
    And request payload_AddAddress
    When method POST
    Then status 200
    And print responseHeaders
    And print responseHeaders.Date
    And print response
    And def pid = response.place_id
    And print pid