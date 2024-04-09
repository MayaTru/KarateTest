Feature: User Creation API

Background:
  * url 'https://example.com/api'

Scenario Outline: Create User
  Given path '/users'
  And request <user>
  When method post
  Then status 200

  Examples:
    | user |
    | { "name": "John", "age": 30, "email": "john@example.com" } |
    | { "name": "Alice", "age": 25, "email": "alice@example.com" } |
    | { "name": "Bob", "age": 35, "email": "bob@example.com" } |