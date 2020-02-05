Feature: sample karate test script for ws+
 
	Background:
	
	* url 'https://utvapp1.intern.acos.no/wspluss/ho/intern/api/api/register/'
	* configure headers = { Accept: 'application/json' }
	* configure ssl = true
    * header Authorization = 'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IkNDN0M4MEFGNEI4NEIzNkFFOEFEQzVEN0NERThFM0Q5MUFFQUE1RDYiLCJ0eXAiOiJKV1QiLCJ4NXQiOiJ6SHlBcjB1RXMycm9yY1hYemVqajJScnFwZFkifQ.eyJuYmYiOjE1ODA4MjM0NTEsImV4cCI6MTU4MDgyNzA1MSwiaXNzIjoiaHR0cHM6Ly91dHZhcHAxLmludGVybi5hY29zLm5vL3dzcGx1c3MvaG8vaW50ZXJuL2lkZW50aXR5c2VydmVyIiwiYXVkIjpbImh0dHBzOi8vdXR2YXBwMS5pbnRlcm4uYWNvcy5uby93c3BsdXNzL2hvL2ludGVybi9pZGVudGl0eXNlcnZlci9yZXNvdXJjZXMiLCJzb2NrZXRhcGkiLCJwbHVzc2FwaSIsIm1vdGVhcGkiXSwiY2xpZW50X2lkIjoiV2ViU2FrKyIsInN1YiI6IjEwNzE3IiwiYXV0aF90aW1lIjoxNTgwODIzNDUxLCJpZHAiOiJsb2NhbCIsIm5hbWUiOiJTZW50aGlsa3VtYXIgU2VuZ290dHV2ZWwiLCJ3aW5kb3dzbG9naW4iOiJzZW50aGlsIiwiYWNvc1VzZXJTdG9yZUlkIjoiMHg5REIxNjA0QjQ4N0U0QzlDNTM2Mjg4Rjg3Rjg3Iiwic2NvcGUiOlsib3BlbmlkIiwicHJvZmlsZSIsImVtYWlsIiwic29ja2V0X2FwaSIsInBsdXNzX2FwaSIsIm1vdGVfYXBpIl0sImFtciI6WyJwd2QiXX0.engAnbwvXZ64tSwaGdst3nJ14C8GsyKdxpZRTj8DLS7xEeGtRApi7_OEyM2nlqstZq6UsKo1e_XCALM7Bww4pDCztp_fXvQ0AUnHXDqWbYNb2jxfbeyKqMs5rH9P38vwLijEGBXWB7EHCxee2Zzdg3D8g8naKPmDtwpAQxXXNj049dSJq76Rcnn1qa4WoMEbs9PVZjYkm7SC0sH8sSRbTIjnmv0Zf6Rugo3KRgxvBzWcrmKzewmaAqBqqAqAvzhcHYlgb4oXINjwWO4wLvXc3lUm5Pi0Db7dFg6hcqr7ayw6iSlbgLFSt5F2GdvisvItdJ_tr7kM1pdcqdyFjAId_Q'
	
	Scenario: get all users and then get the first user by id	 
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