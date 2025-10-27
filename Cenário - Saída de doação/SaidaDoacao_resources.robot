*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost/Acalento/PROJETO/index.php?common=2
${BROWSER}    chrome

${EMAIL_INPUT}    id=email
${SENHA_INPUT}    id=password
${EMAIL_VALUE}     kelly@email.com
${SENHA_VALUE}    Senha1234@
${ENTRAR_BUTTON}    css:button[type="submit"]

${ADMIN_BUTTON}        document.querySelector("button[data-bs-target='#admin-collapse']").click()
${ADMIN_COLLAPSE}      css:aside#sidebar #admin-collapse
${SEND_BUTTON}   link:Saída de doações

${ITEM_SELECT}         id=inputItem
${ESCOLHER_BUTTON}     xpath=//button[contains(., "Escolher")]
${REGISTER_BUTTON}   xpath=//button[contains(., "Registrar saída")]


${QTD_ITENS1}         id=inputQuantidade2
${QTD_ITENS2}         id=inputQuantidade3
${QTD_ITENS3}         id=inputQuantidade4

${QTD_VALUE1}    3
${QTD_VALUE2}    4
${QTD_VALUE3}    5

*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser
    Capture Page Screenshot

Efetuar login
    Wait Until Element Is Visible    ${EMAIL_INPUT}
    Input Text    ${EMAIL_INPUT}    ${EMAIL_VALUE}
    Input Text    ${SENHA_INPUT}    ${SENHA_VALUE}
    Click Button    ${ENTRAR_BUTTON}
    Capture Page Screenshot

Selecionar "Administrador"
    Execute JavaScript    ${ADMIN_BUTTON}
    Wait Until Element Is Visible    ${SEND_BUTTON}
    Capture Page Screenshot

Selecionar "Saída de doações"
    Wait Until Element Is Visible    ${SEND_BUTTON}
    Click Element    ${SEND_BUTTON}
    Capture Page Screenshot

Registrar a saída
    Wait Until Element Is Visible    ${ITEM_SELECT}
    Scroll Element Into View         ${ITEM_SELECT}
    Select From List By Label        ${ITEM_SELECT}        Cesta básica

    Wait Until Element Is Visible    ${ESCOLHER_BUTTON}
    Scroll Element Into View         ${ESCOLHER_BUTTON}
    Click Button                     ${ESCOLHER_BUTTON}
    Capture Page Screenshot
    
    Wait Until Element Is Visible    ${QTD_ITENS1}
    Input Text    ${QTD_ITENS1}    ${QTD_VALUE1}
    Input Text    ${QTD_ITENS2}    ${QTD_VALUE2}
    Capture Page Screenshot
    Input Text    ${QTD_ITENS3}    ${QTD_VALUE3}
    Capture Page Screenshot
    

    Wait Until Element Is Visible    ${REGISTER_BUTTON}
    Scroll Element Into View         ${REGISTER_BUTTON}
    Click Button                     ${REGISTER_BUTTON}
    Capture Page Screenshot
Verificar sucesso
    Wait Until Page Contains         Atualização de estoque feita com sucesso!