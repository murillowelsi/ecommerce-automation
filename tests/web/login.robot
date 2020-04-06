*** Settings ***
Resource          ../../resources/keywords.robot
Resource          ../../resources/credentials.robot
Suite Setup       Start Session
Suite Teardown    End Session

Test Teardown    End Test

*** Test Cases ***
Valid Login
    Given I access login page
    When I input my login "${EMAIL}" and password "${PASS}"
    Then I should my user page

Wrong Password
    [Tags]        invalidpass
    [Template]    Invalid Login 
    ${EMAIL}      ${PASS}1          Email ou senha incorreto. 

Wrong Email
    [Tags]        invalidemail
    [Template]    Invalid Login 
    1${EMAIL}      ${PASS}          Email ou senha incorreto. 

Invalid Email
    Given I access login page
    When I input my login "${EMAIL}1" and password "${PASS}"
    Wait Until Element Is Visible                              ${INVALID_EMAIL}
    Then I Should Invalid Email Message "Por favor, digite um email válido"

*** Keywords ***
Invalid Login
    [Arguments]                                                ${EMAIL}        ${PASS}    ${EXPECT_MESSAGE}
    Given I access login page
    When I input my login "${EMAIL}" and password "${PASS}"
    Wait Until Element Is Visible                              ${ALERT_MSG}
    Then I Should See Alert Message "${EXPECT_MESSAGE}"
