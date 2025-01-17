*** Settings ***
Documentation    
Test Tags    ValidLoginSauceLabs
Resource    ../step_definition/valid_sauce_labs_login_step_definitions.resource
Metadata    Feature    Valid Sauce Labs Login
Metadata    Generated by    _gherkin2robotframework on 2025-01-05T17:31:21.545220_

*** Test Cases ***
Valid Login example line 16
    [Tags]    Valid
    [Template]    Scenario Outline Valid Login
    bob@examples.com    10203040


*** Keywords ***
Scenario Outline Valid Login
    [Arguments]    ${email}    ${password}
    Given User go to SauceLabs Home Page
    When User Click Burger Menu
    And User click Login Menu
    And User input email address "${email}"
    And User input password "${password}"
    And User click the "Login" Button
    Then User should be success Login
    And User should not see error message


