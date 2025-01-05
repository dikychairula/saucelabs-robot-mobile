@ValidLoginSauceLabs
Feature: Valid Sauce Labs Login

    @Valid
    Scenario Outline: Valid Login
        Given User go to SauceLabs Home Page
        When User Click Burger Menu
        And User click Login Menu
        And User input email address "<email>"
        And User input password "<password>"
        And User click the "Login" Button
        Then User should be success Login
        And User should not see error message


    Examples:
    |email              |   password    |
    |bob@examples.com   |   10203040    |