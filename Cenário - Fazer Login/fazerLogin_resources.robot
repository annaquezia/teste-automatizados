*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NAVEGADOR}    Chrome
${URL}  http://localhost/Acalento/PROJETO/index.php

${ENTRAR_BUTTON_HOME}   xpath=//a[normalize-space(.)="Entrar"]

${EMAIL_INPUT}  id=email
${SENHA_INPUT}  id=password
${ENTRAR_BUTTON_LOGIN}    css:button[type="submit"]

${EMAIL_VALIDO}  email@teste.com
${SENHA_VALIDA}    Aa@12345
${EMAIL_INVALIDO}   email@teste1.com
${SENHA_INVALIDA}   Aa@54321
${EMAIL_BRANCO}
${SENHA_BRANCO}



${PAGINA_INICIAL_MENSAGEM}  xpath=//h2[normalize-space(.)="Bem vindo!!!"]

${MENSAGEM_ERRO}    id:toastRuim

*** Keywords ***
Abrir navegador
    open browser    ${URL}  ${NAVEGADOR}
    maximize browser window

Fechar navegador
    close browser
    capture page screenshot

Selecionar o botão "Entrar" na home
    wait until element is visible    ${ENTRAR_BUTTON_HOME}
    click element    ${ENTRAR_BUTTON_HOME}

Digitar email válido
    wait until element is visible    ${EMAIL_INPUT}
    input text    ${EMAIL_INPUT}    ${EMAIL_VALIDO}
    capture page screenshot

Digitar email inválido
    wait until element is visible    ${EMAIL_INPUT}
    input text    ${EMAIL_INPUT}    ${EMAIL_INVALIDO}
    capture page screenshot

Deixar campo do email em branco
    wait until element is visible    ${EMAIL_INPUT}
    input text    ${EMAIL_INPUT}    ${EMAIL_BRANCO}
    capture page screenshot

Digitar senha válida
    input text    ${SENHA_INPUT}    ${SENHA_VALIDA}
    capture page screenshot

Digitar senha inválida
    input text    ${SENHA_INPUT}    ${SENHA_INVALIDA}
    capture page screenshot

Deixar campo da senha em branco
    input text    ${SENHA_INPUT}    ${SENHA_BRANCO}
    capture page screenshot

Selecionar botão entrar
    click button    ${ENTRAR_BUTTON_LOGIN}
    capture page screenshot

Acessar página principal
    wait until element is visible    ${PAGINA_INICIAL_MENSAGEM}
    element should be visible    ${PAGINA_INICIAL_MENSAGEM}
    capture page screenshot

Mensagem de erro
    wait until element is visible    ${MENSAGEM_ERRO}
    element should be visible    ${MENSAGEM_ERRO}
    capture page screenshot
