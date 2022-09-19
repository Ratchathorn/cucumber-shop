Feature: Cut stock
#  As a cashier
#  I want to buy products

  Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Book" with price 420.00 and stock of 7 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then stock of a product "Bread" should be 3

Scenario: Buy multiple products
    When I buy "Bread" with quantity 3
    And I buy "Jam" with quantity 2
    Then stock of a product "Bread" should be 2
    Then stock of a product "Jam" should be 8