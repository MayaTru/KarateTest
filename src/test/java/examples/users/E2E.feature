Feature: E2E
  # for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background: 
    * url baseURL

  Scenario:
  	* def props = {}
  	Given def Add_Address = call read('AddAddress.feature')
  	* set props.pid = Add_Address.pid
  	And def Get_Address = call read('GetAddress.feature') props
  	And def Update_Address = call read('UpdateAddress.feature') props
  	And def Delete_Address = call read('DeleteAddress.feature') props
  	#* print Add_Address.pid