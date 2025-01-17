*** Settings ***
Documentation    
Test Tags    InvalidLoginSauceLabs
Resource    ../step_definition/invalid_sauce_labs_login_step_definitions.resource
Metadata    Feature    Invalid Sauce Labs Login
Metadata    Generated by    _gherkin2robotframework on 2025-01-05T14:59:04.012353_

*** Test Cases ***
Invalid Login example line 16
    [Tags]    Invalid
    [Template]    Scenario Outline Invalid Login
    admin@gmail.com    wrongway    Provided credentials do not match any user in this service.
    alice@example.com    10203040    Sorry, this user has been locked out.
    # ${EMPTY}    passw    Username is required
    # email@mail.com    ${EMPTY}    Password is required

*** Keywords ***
Scenario Outline Invalid Login
    [Arguments]    ${email}    ${password}    ${error_message}
    Given User go to SauceLabs Home Page
    When User Click Burger Menu
    And User click Login Menu
    And User input email address "${email}"
    And User input password "${password}"
    And User click the "Login" Button
    Then User should be failed Login
    And User should see error message "${error_message}"
