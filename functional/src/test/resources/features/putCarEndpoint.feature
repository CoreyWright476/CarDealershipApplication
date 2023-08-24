Feature: Testing the updateCar method to update a car in the database

  Scenario: a client makes a put request to the add cars/admin/put endpoint and receives a 200 status and body of "Car updated"
    Given the client sends a "POST" request to "/cars/admin/post" endpoint with the following:
      | brand | model | year | price | mileage | colour     |
      | BMW   | X5    | 2022 | 80000 | 10000   | space grey |
    When the client sends a "PUT" request to "/cars/admin/put" endpoint with the following updated car information:
      | id | brand | model | year | price | mileage | colour     |
      | 1  | BMW   | X5    | 2022 | 80000 | 10000   | space grey |
    Then the response should have a status code of 200
    And the response body should have the key '{"Description":"Car updated"}'
