
*** Settings ***
Resource    ../resources/android.robot

Test Setup       Abrir App
Test Teardown    Fechar App

*** Test Cases ***
Adicionar produto ao carrinho
    Faço login com as credenciais "fernando@qaninja.io" e "pass123"
    Acesso a categoria "Mega Drive"
    Escolho o produto "Golden Axe"
    Adiciono este item ao carrinho
    Devo ver um popup com a mensagem:
    ...     Você adicionou Golden Axe ao seu carrinho!

Não logado
    Acesso a categoria "Mega Drive"
    Escolho o produto "Golden Axe"
    Adiciono este item ao carrinho
    Devo ver um popup com a mensagem:
    ...     Você deve estar logado para adicionar um produto!

Comprar produto
    [tags]      checkout     

    Faço login com as credenciais "fernando@qaninja.io" e "pass123"
    Tenho o seguinte produto no meu carrinho:

    ...     F-Zero      Super Nintendo

    Finalizo a compra com Paypal
    Devo ver um popup com a mensagem:
    ...    Você pagou seu pedido atraves do PayPal! Entregaremos sua encomenda o mais rápido possível!


*** Keywords ***
Tenho o seguinte produto no meu carrinho:
    [Arguments]         ${prodcut}      ${category}

    Acesso a categoria "${category}"
    Escolho o produto "${product}"
    Adiciono este item ao carrinho

    Wait Until Page Contains Element    ${POPUP_OK}
    Click Element                       ${POPUP_OK}

    Go Back
    Wait Until Page Contains        ${product}
    Go Back

    components.Acessa Carrinho
    Click Element                   ${REFRESH_CART}

Finalizo a compra com Paypal
    # Automatizar o checkout no Paypal
    # user: test@qaninja.io
    # pass: qaninja123456
    # Desafio implementar esta Keyword
    # Dica: Use Click Text ou Xpath
