*** Settings ***
Documentation    Simple example of Farfetch web automation using RobotFramework + SeleniumLibrary.
Library          SeleniumLibrary
Resource         elements.robot

*** Variables ***
${BASE_URL}    https://www.farfetch.com/br
${BROWSER}     Chrome                       # headlesschrome

*** Keywords ***
Start Session
    Open Browser                  about:blank    ${BROWSER}    
    Set Selenium Implicit Wait    5
    Set Window Size               1920      1080

End Session
    Close Browser

Logged with "${EMAIL}" and "${PASS}"
    Start Session
    Go To            ${BASE_URL}/login.aspx

    Input Text       ${INPUT_EMAIL}     ${EMAIL}
    Input Text       ${INPUT_PASS}      ${PASS}
    Click Element    ${BTN_LOGIN}

    Then I should my user page

End Test
    Capture Page Screenshot