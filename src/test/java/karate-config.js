function() {   
  var config = {
		  apiURL: 'https://utvapp1.intern.acos.no/wspluss/ho/intern/api/api/register/sakmaler'
  };
  
  karate.configure('connectTimeout', 2000);
  karate.configure('readTimeout', 2000);
  return config;
}