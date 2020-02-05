Feature: sample karate test script for ws+  internal url
 
	Background:
	
	* url 'https://pluss-testcomplete.intern.acos.no/api/api/register'
	* configure ssl = true
    * header Authorization = 'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjQ4ODAyQjZGMUE4NjU0RTI3N0VGREJENjM0NkRFOEU5MzlENzcwNTkiLCJ0eXAiOiJKV1QiLCJ4NXQiOiJTSUFyYnhxR1ZPSjM3OXZXTkczbzZUblhjRmsifQ.eyJuYmYiOjE1ODA5MDA0OTMsImV4cCI6MTU4MDkwNDA5MywiaXNzIjoiaHR0cHM6Ly9wbHVzcy10ZXN0Y29tcGxldGUuaW50ZXJuLmFjb3Mubm8vaWRlbnRpdHlzZXJ2ZXIiLCJhdWQiOlsiaHR0cHM6Ly9wbHVzcy10ZXN0Y29tcGxldGUuaW50ZXJuLmFjb3Mubm8vaWRlbnRpdHlzZXJ2ZXIvcmVzb3VyY2VzIiwic29ja2V0YXBpIiwicGx1c3NhcGkiLCJtb3RlYXBpIl0sImNsaWVudF9pZCI6IldlYlNhaysiLCJzdWIiOiI2NzMiLCJhdXRoX3RpbWUiOjE1ODA4OTUyOTgsImlkcCI6ImFhZCIsIm5hbWUiOiJUZXN0Y29tcGxldGUiLCJ3aW5kb3dzbG9naW4iOiJ0ZXN0Y29tcGxldGUiLCJhY29zVXNlclN0b3JlSWQiOiIweEEzMkFDM0E2MzlBM0FGRTkzRTM4MzJGQTZBM0IiLCJpZHBfZW1haWwiOiJ0ZXN0Y29tcGxldGU0QGFjb3Mub25taWNyb3NvZnQuY29tIiwic2NvcGUiOlsib3BlbmlkIiwicHJvZmlsZSIsImVtYWlsIiwic29ja2V0X2FwaSIsInBsdXNzX2FwaSIsIm1vdGVfYXBpIl0sImFtciI6WyJleHRlcm5hbCJdfQ.Q4DyZlpTUGKCs08n4qMBgprCgAB9R7XATC1IHX-jnF4BcyCrFSxeKndszYgQ4V9K8v2KL9KBnfaJfFFmAXfHYvkdxYql3mQ0PLcKs4dYNX7AriFGjDOEzkvyWORhUNKe39cz36rXHrq5AMmiHAIWo_sTu0bIYQ1Z6LlUvKWf3y_6WRsRzU9iMz_oTqaj8gRN0_1DnIYJHPuzTHkuhNKxhD95Ou_UB6H2dga_Nt7EorI2hB851M_KW9eRuilzI_M_jv7UowFsf3lclf1IWYZc8TsOj4S303D7dydPgbZfcc6t_mhst4N864aFhiwckiyTrAz1uy8h0HurR6KbN0tDiQ'
	
	@tagdemo
	Scenario: get all sak maler	from internal url
	Given path 'sakmaler'
	When method get
	Then status 200
	And def res = response
	And match each response contains { id: '#number', tittel: '#string' }
	And match res == read('sakmal.json')
	And match res == 
"""
[
  {
    "id": 11,
    "tittel": "Generell Sak"
  },
  {
    "id": 15,
    "tittel": "Byggesak"
  },
  {
    "id": 16,
    "tittel": "Plansak"
  },
  {
    "id": 17,
    "tittel": "Oppmålingssak"
  },
  {
    "id": 23,
    "tittel": "Kathrine2"
  },
  {
    "id": 20,
    "tittel": "Delingssak"
  },
  {
    "id": 18,
    "tittel": "Generell sak LKB"
  },
  {
    "id": 24,
    "tittel": "Kathrine 3 blank arkivdel"
  },
  {
    "id": 21,
    "tittel": "Kathrine tester"
  },
  {
    "id": 19,
    "tittel": "Møtesak"
  },
  {
    "id": 29,
    "tittel": "Ny sak LKB"
  },
  {
    "id": 27,
    "tittel": "Sissel klasseringsrekkefølge"
  },
  {
    "id": 26,
    "tittel": "Sissel Test Filtrering"
  },
  {
    "id": 22,
    "tittel": "Sissel testsak - teknologi"
  },
  {
    "id": 28,
    "tittel": "Toppnode"
  }
]
"""