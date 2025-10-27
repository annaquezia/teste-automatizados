*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAVEGADOR}    Chrome
${URL}  http://localhost/Acalento/PROJETO/index.php?common=2

${USER_EMAIL}   annaquezia@email.com
${USER_SENHA}   12345678

${EMAIL_INPUT}  id=email
${SENHA_INPUT}  id=password
${ENTRAR_BUTTON}    css:button[type="submit"]

${EVENTOS_BUTTON}   xpath=//aside[@id="sidebar"]//button[@data-bs-target="#eventos-collapse"]
${EVENTOS_COLLAPSE}    css:aside#sidebar #eventos-collapse
${MEUS_EVENTOS_BUTTON}  xpath=//aside[@id="sidebar"]//div[@id="eventos-collapse"]//a[normalize-space(.)="Meus eventos"]

${AREA_CONFIRMACAO_BUTTON}  xpath=//div[contains(@class,"card-body")][.//p[normalize-space(.)="31/10/2025 às 12:30"]]//a[contains(@class,"btn") and contains(normalize-space(.),"Ir para área da confirmação")]

${NAO_POSSO_IR_BUTTON}  xpath=//button[normalize-space(.)="Não posso ir"]

${CANCELAR_BUTTON}  xpath=//button[normalize-space(.)="Sim, cancelar"]

${MENSAGEM_SUCESSO}    id:toastBom

*** Keywords ***
Abrir navegador
    open browser    ${URL}  ${NAVEGADOR}
    maximize browser window

Efetuar login
    Wait Until Element Is Visible    ${EMAIL_INPUT}    10s
    input text    ${EMAIL_INPUT}    ${USER_EMAIL}
    input text    ${SENHA_INPUT}    ${USER_SENHA}
    capture page screenshot
    click button    ${ENTRAR_BUTTON}

Selecionar "Eventos"
    wait until page contains element    ${EVENTOS_BUTTON}   10s
    scroll element into view    ${EVENTOS_BUTTON}
    click button    ${EVENTOS_BUTTON}
    wait until element is visible    ${EVENTOS_COLLAPSE}
    capture page screenshot

Selecionar "Meus eventos"
    wait until element is visible       ${EVENTOS_COLLAPSE}.show    10s
    wait until element is visible       ${MEUS_EVENTOS_BUTTON}        10s
    capture page screenshot
    click element                       ${MEUS_EVENTOS_BUTTON}

Selecionar ir para a área de confirmação
    wait until element is visible    ${AREA_CONFIRMACAO_BUTTON}
    scroll element into view    ${AREA_CONFIRMACAO_BUTTON}
    capture page screenshot
    click element    ${AREA_CONFIRMACAO_BUTTON}

Selecionar "Não posso ir"
    wait until element is visible    ${NAO_POSSO_IR_BUTTON}
    capture page screenshot
    click button    ${NAO_POSSO_IR_BUTTON}

Selecionar "Sim cancelar"
    wait until element is visible    ${CANCELAR_BUTTON}
    capture page screenshot
    click button    ${CANCELAR_BUTTON}

Mensagem de sucesso
    wait until element is visible    ${MENSAGEM_SUCESSO}
    capture page screenshot
    element should be visible    ${MENSAGEM_SUCESSO}

Fechar navegador
    capture page screenshot
    close browser