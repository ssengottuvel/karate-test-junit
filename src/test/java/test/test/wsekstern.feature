Feature: sample karate test script for ws+ eksternal URL
 
	Background:
	
	* url 'https://pluss-nav2.ekstern.acos/api/api/register'
	* configure ssl = true
    * header Authorization = 'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjlDMDJDRjQ1MDU4MjdGQjU0RjU1NUZCNDM1MDVFQzI0NkFGMDlDNjYiLCJ0eXAiOiJKV1QiLCJ4NXQiOiJuQUxQUlFXQ2Y3VlBWVi0wTlFYc0pHcnduR1kifQ.eyJuYmYiOjE1ODA4OTU2MDMsImV4cCI6MTU4MDg5OTIwMywiaXNzIjoiaHR0cHM6Ly9wbHVzcy1uYXYyLmVrc3Rlcm4uYWNvcy9pZGVudGl0eXNlcnZlciIsImF1ZCI6WyJodHRwczovL3BsdXNzLW5hdjIuZWtzdGVybi5hY29zL2lkZW50aXR5c2VydmVyL3Jlc291cmNlcyIsInNvY2tldGFwaSIsInBsdXNzYXBpIiwibW90ZWFwaSJdLCJjbGllbnRfaWQiOiJXZWJTYWsrIiwic3ViIjoiMzA2IiwiYXV0aF90aW1lIjoxNTgwODk1NjAzLCJpZHAiOiJsb2NhbCIsIm5hbWUiOiJUZXN0QXV0b21hdGlvbiAtIEFya2l2YXIiLCJ3aW5kb3dzbG9naW4iOiJ0ZXN0Y29tcGxldGU0IiwiYWNvc1VzZXJTdG9yZUlkIjoiMHg3ODg2MzNCNUQ1RUMwNEMwQkNBQTEyRjg0RDhFIiwic2NvcGUiOlsib3BlbmlkIiwicHJvZmlsZSIsImVtYWlsIiwic29ja2V0X2FwaSIsInBsdXNzX2FwaSIsIm1vdGVfYXBpIl0sImFtciI6WyJwd2QiXX0.KPWx64j3Y1y4erDhEajDhAAK-5z0suotQc_kBYijTwQpUZpj68ZsolmorxKJeowK7jXCjwdFVebADNN0GrHWFycdFExGNfMXU6xVel_TjyiPukcHLFCQeYsZFWojS7fCBZQY7KVafEM80fPkLo30e443-qhUNZcnx8vNoGFTAT4zLRIAY2Kor3_OHL3sZzhoK2lqQUKxfTIRBbrYicJO_i_DzrFCuKoiebOISZWbriTsf6hMGknSzhiLL2Ph_78_OOVCrJ4x5M-EdFBI_L7exSvka4YGd23myfZGiqbE9lwySqpEY6nsiMWqR8l6RmYuPYmh76tYo0P_dUt50s1voQ'
	
	@tagdemo
	Scenario: get all sak maler	from eksternal URL	 
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
    "id": '#number',
    "tittel": "Ny sak"
  },
  {
    "id": 13,
    "tittel": "Ny byggesak"
  },
  {
    "id": 17,
    "tittel": "Ny elevmappe"
  },
  {
    "id": 18,
    "tittel": "Ny personalmappe"
  },
  {
    "id": 55,
    "tittel": "Barnevernsak"
  },
  {
    "id": 56,
    "tittel": "Kathrine malsak jp fil"
  },
  {
    "id": 52,
    "tittel": "Malsak med et veldig langt navn blir stopp"
  },
  {
    "id": 53,
    "tittel": "Malsak med skjerming og merknad"
  },
  {
    "id": 54,
    "tittel": "Marit Samlemappe"
  },
  {
    "id": 51,
    "tittel": "Ny Sak2"
  },
  {
    "id": 47,
    "tittel": "Nytt prosjekt"
  },
  {
    "id": 49,
    "tittel": "Tilleggsdata knyttet til sakstype"
  },
  {
    "id": 50,
    "tittel": "Tilleggsdata ligger i malsaken"
  }
]
"""