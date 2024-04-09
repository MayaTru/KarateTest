Feature: Iterate over JSON array

Background:
  * def data = [
      {
        "location_lng": 33.427362,
        "website": "http://google.com",
        "address": "29, side layout, cohen 09",
        "TestCases": "TC1",
        "name": "Frontline house",
        "accuracy": 50.0,
        "phone_number": "(+91) 983 893 3937",
        "language": "French-IN",
        "location_lat": -38.383494
      },
      {
        "location_lng": 33.427362,
        "website": "http://google.com",
        "address": "30, main layout, cohen 10",
        "TestCases": "TC2",
        "name": "Maya house",
        "accuracy": 30.0,
        "phone_number": "(+91) 989 772 929",
        "language": "English-IN",
        "location_lat": -38.383494
      }
    ]

Scenario Outline: Perform action for each object
  * def obj = data[__row]
  * print 'Object:', obj
  * print 'Accuracy:', obj.accuracy
  * print 'Test Case:', obj.TestCases
  # Perform other actions as needed

Examples:
  | data |