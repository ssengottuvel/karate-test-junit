function() {   
  var config = {
		  apiURL: 'https://utvapp1.intern.acos.no/wspluss/ho/intern/api/api/register/sakmaler'
  };
  
  karate.configure('connectTimeout', 20000);
  karate.configure('readTimeout', 20000);
  return config;
}