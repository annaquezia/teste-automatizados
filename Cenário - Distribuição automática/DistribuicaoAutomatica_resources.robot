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
${DISTRIBUTE_BUTTON}   link:Distribuir doações

${ITEM_SELECT}         id=inputItem
${ESCOLHER_BUTTON}     xpath=//button[contains(., "Escolher")]
${DISTRIBUIR_BUTTON}   xpath=//button[contains(., "Distribuir")]
${MENSAGEM_SUCESSO}    xpath=//div[contains(., "Distribuição feita com sucesso!")]

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
    Wait Until Element Is Visible    ${DISTRIBUTE_BUTTON}
    Capture Page Screenshot

Selecionar "Distribuir doações"
    Wait Until Element Is Visible    ${DISTRIBUTE_BUTTON}
    Click Element    ${DISTRIBUTE_BUTTON}
    Capture Page Screenshot

Realizar distribuição
    Wait Until Element Is Visible    ${ITEM_SELECT}
    Scroll Element Into View         ${ITEM_SELECT}
    Select From List By Label        ${ITEM_SELECT}        Cesta básica
    Capture Page Screenshot

    Wait Until Element Is Visible    ${ESCOLHER_BUTTON}
    Scroll Element Into View         ${ESCOLHER_BUTTON}
    Click Button                     ${ESCOLHER_BUTTON}
    Capture Page Screenshot

    Wait Until Element Is Visible    ${DISTRIBUIR_BUTTON}
    Scroll Element Into View         ${DISTRIBUIR_BUTTON}
    Click Button                     ${DISTRIBUIR_BUTTON}

Verificar sucesso
    Wait Until Page Contains         Distribuição feita com sucesso!
    Capture Page Screenshot