Feature: E2E_Itr
  # for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support
	
	 Background: 
   # * url baseURL
    * json j1 = datasource
    * def r1 = j1.slice(1,3)
    
  Scenario Outline:
  	* print r1
  	#* print r1[0].location_lng
  	* def obj = r1[__num]
  	* karate.log(r1[__num])
  	* print 'Object:', obj
  	* print obj.accuracy
  	Examples:
  	|r1|
  	|r1|
  	|r1|