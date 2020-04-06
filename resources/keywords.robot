*** Settings ***
Resource    base.robot

*** Keywords ***
## Login
Given I access login page
    Go To    ${BASE_URL}/login.aspx

When I input my login "${email}" and password "${password}"
    Input Text       ${INPUT_EMAIL}    ${email}
    Input Text       ${INPUT_PASS}     ${password}
    Click Element    ${BTN_LOGIN}

Then I should my user page
    Wait Until Element Is Visible    ${ACCOUNT_NAME}    timeout=10s
    Element Text Should Be           ${ACCOUNT_NAME}    Murillo Welsi de Souza Pereira

Then I Should See Alert Message "${EXPECT_MESSAGE}"
    Element Should Contain    ${ALERT_MSG}    ${EXPECT_MESSAGE}

Then I Should Invalid Email Message "${INVALID_EMAIL_MESSAGE}"
    Element Should Contain    ${INVALID_EMAIL}    ${INVALID_EMAIL_MESSAGE}

Select Product
    [Arguments]                      ${PRODUCT_NAME}
    Wait Until Element Is Visible    ${MEN_MENU} 
    Mouse Over                       ${MEN_MENU}
    Wait Until Element Is Visible    ${SHOES_MENU} 
    Mouse Over                       ${SHOES_MENU} 
    Click Element                    ${ADIDAS_MENU}
    Input Text                       ${SEARCH}                ${PRODUCT_NAME} 
    Wait Until Element Is Visible    ${SEARCH_RESULT}
    Click Element                    ${SEARCH_RESULT}
    Click Element                    ${ADIDAS_SHOES}
    Element Text Should Be           ${ADIDAS_SHOES_TITLE}    ${PRODUCT_NAME}

Select Product Size
    Click Element    ${SELECT_SIZE}
    Click Element    ${SIZE}
    Click Element    ${BTN_BUY}

Check Product Information
    [Arguments]               ${INFO_ID}       ${INFO_SIZE}    
    Element Text Should Be    ${PRODUCT_ID}    ${INFO_ID}
    Element Text Should Be    ${LABEL_SIZE}    ${INFO_SIZE}    

Go To Checkout
    Click Element                    ${BTN_CHECKOUT}
    Wait Until Element Is Visible    ${CHECKOUT_TITLE}    timeout=20
    Element Text Should Be           ${CHECKOUT_TITLE}    Adicione seu endereço de entrega

Remove Product From Cart
    Click Element    ${REMOVE_BTN}

