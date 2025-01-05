@InvalidLoginSauceLabs
Feature: Invalid Sauce Labs Login

    @Invalid
    Scenario Outline: Invalid Login
        Given User go to SauceLabs Home Page
        When User Click Burger Menu
        And User click Login Menu
        And User input email address "<email>"
        And User input password "<password>"
        And User click the "Login" Button
        Then User should be failed Login
        And User should see error message "<error_message>"


    Examples:
    |email              |   password    |   error_message                                                |
    |admin@gmail.com    |   wrongway    |   Provided credentials do not match any user in this service.  |
    |admin@example.com  |               |   Password is required        |
    |                   |   passw       |   Username is required        |
    