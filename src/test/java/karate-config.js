function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'qa';
  }
  var config = {
    env: env,
    baseURL: 'https://rahulshettyacademy.com/maps/api',
    check: 'c1',
    datasource: karate.properties['excelData']
  }
  if (env == 'qa') {
    // customize
    config.baseURL = 'https://rahulshettyacademy.com/maps/api'
    config.check = 'qa'
  } else if (env == 'uat') {
  	config.baseURL = 'https://rahulshettyacademy.com/maps/api'
  	config.check = 'uat'
  }
  return config;
}