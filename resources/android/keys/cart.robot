

*** Keywords ***
Faço login com as credenciais "${email}" e "${pass}"
    Clean Cart    ${email}

    login.Acesso a tela de login
    login.Submeto minhas credencias "${email}" e "${pass}"

Acesso a categoria "${category}"
    ${target}=    Convert To Uppercase    ${category}

    Wait Until Page Contains    ${target}
    Click Text                  ${target}

Escolho o produto "${product}"
    Wait Until Page Contains    ${product}
    Click Text                  ${product}
    Set Test Variable           ${product}

Adiciono este item ao carrinho
    Wait Until Page Contains    ${product}
    Click Text                  ADICIONAR AO CARRINHO

