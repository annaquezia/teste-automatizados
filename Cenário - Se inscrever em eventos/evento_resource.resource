*** Keywords ***
Selecionar dropdown de "Eventos"
    Execute JavaScript    document.querySelector("button[data-bs-target='#eventos-collapse']").click()
    Wait Until Element Is Visible    link:Inscrever-se

Ir para a página de "Eventos"
    Wait Until Element Is Visible    link:Inscrever-se
    Click Element                   link:Inscrever-se

Se inscrever no evento
    Click Element    xpath=//h5[contains(., 'Campanha do Agasalho 2025')]/ancestor::div[contains(@class, 'card')]//button[contains(., 'Inscrever-se')]
    Page Should Contain    Inscrição feita com sucesso
