Feature: Iterate over array of objects

Background:
  * def data =
    """
    [
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
    """

Scenario Outline: Iterate over array of objects
  * def object = data[__num]
  * print 'Object:', object
  * print 'Accuracy:', object.accuracy
  * print 'Test Case:', object.TestCases
  # Perform other actions as needed

Examples:
  | data |
  | data |
  | data |
