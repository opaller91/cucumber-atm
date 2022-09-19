Feature: deposit
  As a customer
  I want to deposit money to my account

  Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

  Scenario: Deposit amount more than zero
    When I deposit 1000 from ATM
    Then my account balance is 1200

  Scenario: Withdraw amount zero
    When I deposit 0 from ATM
    Then my account balance is 200