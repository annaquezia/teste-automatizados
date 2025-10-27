*** Keywords ***
Abrir a página de penalidades
    Click Element    link:MInhas penalidades

Abrir os detalhes da penalidade
    Click Element    xpath=//tr[td[contains(., '#4')]]//a[contains(., 'Ver mais')]
    Page Should Contain    Justificar penalidade

Preencher campo de justificativa
    [Arguments]    ${valor}
    Input Text    inputJustification    ${valor}

Enviar justificativa
    Submit Form
    Page Should Contain    Justificação enviada!
