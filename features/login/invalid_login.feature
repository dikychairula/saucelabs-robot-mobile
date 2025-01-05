@LoginSauceLabs
Feature: Sauce Labs :ogin

    @Invalid
    Scenario Outline: Invalid Login
        Given User go to SauceLabs Home Page
        When User Click Burger Menu
        And User click Login Menu
        And User input email address "<email>"
        And User input password "<password>"
        And User click the "Sign In" Button
        Then User should be failed Login
        And User should see error message "<error_message>"


    Examples:
    |email  |   password    |   error_message   |
    |superadmin@gmail.com   |   testsatuduatiga |   INVALID CREDENTIAL  |
    |test123    |   superadmin  |   Email format is not valid   |