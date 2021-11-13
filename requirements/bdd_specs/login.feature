Feature: Login
As a customer
I want to be able to access my account and stay logged in
So that I can see and respond to polls quickly

Scenario: Valid credentials
  Given the customer entered valid credentials
  When to request to sign in
  Then the system should send the user to the search screen
  And keep the user connected

Scenario: Bad credentials
  Given the customer entered invalid credentials
  When to request to sign in
  Then the system should return an error message