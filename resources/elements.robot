*** Variables ***
### main page
${PAGE_TITLE}     Farfetch Brasil - Marcas de luxo online & Entrega de até 7 dias
${MEN_MENU}       xpath://*[@class="tabs__span"][contains(text(),'Homem')]
${SHOES_MENU}     xpath://*[@data-tstid="Go_Menu_ShopHomem_TÊNIS"][@title="TÊNIS"]
${ADIDAS_MENU}    xpath://*[@data-tstid="Go_Menu_Homem_TÊNIS_Adidas"][@title="Adidas"]

### login page
${INPUT_EMAIL}      id:email-input-login
${INPUT_PASS}       id:Password
${BTN_LOGIN}        xpath://button[@value="Login"]
${ALERT_MSG}        xpath://span[@id="js-passwordValidationMessage"]
${INVALID_EMAIL}    xpath://span[@class="form-validator_error field-validation-error"]
${SEARCH}           id:ff-searchfield-input
${SEARCH_RESULT}    xpath://*[@class="autocomplete-suggestion"]

### user logged page
${ACCOUNT_NAME}    xpath://*[@class="js-details-account-name ff-details-account-name ff-details-name-span"]

### tenis page
${PRODUCT_ID}                  xpath://*[@data-tstid="Div_Product_ItemID_ShoppingBag"]
${SHOES_HEADER_DESCRIPTION}    xpath://*[@class="_b4693b _9b9cb5 _9ebce7"]
${ADIDAS_SHOES}                xpath://*[@itemid="/br/shopping/men/adidas-tenis-stan-smith-item-14761504.aspx?storeid=9359"]
${ADIDAS_SHOES_TITLE}          xpath://*[@data-tstid="cardInfo-description"][contains(text(),'Tênis Stan Smith')]

${LABEL_SIZE}     xpath://*[@data-tstid="Label_ItemSize"]
${SIZE_VALUE}     24
${SELECT_SIZE}    class:_c96449
${SIZE}           xpath://*[@class="_8514cf"][@data-value="${SIZE_VALUE}"]

${BTN_BUY}         class:_737011._f1fb8d._a681f1._03973c
${BTN_CHECKOUT}    id:BasketGoToCheckout
${REMOVE_BTN}      class:article-remove-button
${LIST}            xpath://*[@data-tstid="sizeDescription"]

${CHECKOUT_TITLE}    xpath://*[@class="bold shippingAddress__title"]