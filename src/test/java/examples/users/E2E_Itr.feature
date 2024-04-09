Feature: E2E_Itr
  # for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background: 
    * url baseURL
    * json j1 = datasource
    * def r1 = j1.slice(1,3)

  Scenario Outline: <TestCases>
  	* def obj = r1[__num]
  	* karate.log(r1[__num])
  	* def props = {}
  	* set props.r1 = r1[__num]
  	Given def Add_Address = call read('AddAddress1.feature') props
  	* set props.pid = Add_Address.pid
  	And def Get_Address = call read('GetAddress.feature') props
  	And def Update_Address = call read('UpdateAddress.feature') props
  	And def Delete_Address = call read('DeleteAddress.feature') props
  	Examples:
  	|r1|
  	|r1|
  	|r1|