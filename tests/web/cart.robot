*** Settings ***
Resource          ../../resources/keywords.robot
Resource          ../../resources/credentials.robot
Suite Setup       Logged with "${EMAIL}" and "${PASS}"
Suite Teardown    End Session

Test Teardown    End Test

*** Test Cases ***
Add Product To Cart
    [Tags]                      cart
    [Template]                  Add Product
    Tênis Stan Smith            14761504       7 UK
    

*** Keywords ***
Add Product
    [Arguments]                  ${NAME}    ${ID}       ${LABEL}
    Select Product               ${NAME}
    Select Product Size          
    Check Product Information    ${ID}      ${LABEL}
    Go To Checkout