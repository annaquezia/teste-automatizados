*** Keywords ***
Selecionar dropdown de doações
    Execute JavaScript    document.querySelector("button[data-bs-target='#doacoes-collapse']").click()
    Wait Until Element Is Visible    link:Faça uma doação

Selecionar "Faça uma doação"
    Wait Until Element Is Visible    link:Faça uma doação
    Click Element                   link:Faça uma doação
    
Digitar no campo "Valor"
    [Arguments]    ${valor}
    Input Text    id:inputValor    ${valor}
    
Avaliar conteúdo do campo "Valor"
    [Arguments]    ${formatação_esperada}
    ${valor_campo}=    Get Value    id:inputValor
    Should Be True    '${valor_campo}' == '${formatação_esperada}'

Avaliar valor na tela de pagamento
    [Arguments]    ${valor_esperado}
    Submit Form
    Wait Until Page Contains    ${valor_esperado}
    Page Should Contain     ${valor_esperado}