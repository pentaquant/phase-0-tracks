What are some common HTTP status codes?
400: Bad Request
403: Forbidden
500: Internal Server Error
502: Bad Gateway
What is the difference between a GET request and a POST request? When might each be used?
GET is for retrieving data. It should have no side effects, you should be able to request the same URL over and over harmlessly.

POST is for writing data. It may have side effects. Making multiple identical write requests will likely result in multiple writes. Browsers typically give you warnings about this. POST is not secure. The data is in the body of the request instead of the URL but it is trivially simple to view/edit.