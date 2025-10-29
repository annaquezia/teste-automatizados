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

${ADMIN_BUTTON}   xpath=//aside[@id="sidebar"]//button[@data-bs-target="#admin-collapse"]
${ADMIN_COLLAPSE}    css:aside#sidebar #admin-collapse
${VIEW_USER_BUTTON}  xpath=//aside[@id="sidebar"]//div[@id="admin-collapse"]//a[normalize-space(.)="Visualizar usuários"]

${INATIVAR_USER}    xpath=//tr[td[normalize-space(.)="Maristela Alice Almeida"]]//a[contains(., "Inativar")]
${USER_INATIVADO}    xpath=//tr[td[normalize-space(.)="Maristela Alice Almeida"]]//a[contains(., "Reativar")]

*** Keywords ***
Abrir navegador
    open browser    ${URL}  ${NAVEGADOR}
    maximize browser window

Fechar navegador
    close browser
    capture page screenshot

Efetuar login
    wait until page contains element    ${EMAIL_INPUT}
    input text    ${EMAIL_INPUT}    ${USER_EMAIL}
    input text    ${SENHA_INPUT}    ${USER_SENHA}
    click button    ${ENTRAR_BUTTON}
    capture page screenshot

Selecionar "Administrador"
    wait until page contains element    ${ADMIN_BUTTON}
    click button    ${ADMIN_BUTTON}
    wait until element is visible    ${ADMIN_COLLAPSE}
    capture page screenshot

Selecionar "Visualizar usuários"
    wait until element is visible    ${VIEW_USER_BUTTON}
    scroll element into view    ${VIEW_USER_BUTTON}
    click element    ${VIEW_USER_BUTTON}
    capture page screenshot

Selecionar "inativar"
    wait until element is visible    ${INATIVAR_USER}
    click element    ${INATIVAR_USER}
    capture page screenshot
    wait until element is visible    ${USER_INATIVADO}
    capture page screenshot