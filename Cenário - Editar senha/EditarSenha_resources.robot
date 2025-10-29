*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost/Acalento/PROJETO/index.php?common=2
${BROWSER}    chrome

${EMAIL_INPUT}    id=email
${SENHA_INPUT}    id=password
${EMAIL_VALUE1}     teste3@email.com
${SENHA_VALUE1}    12345678Aa@
${EMAIL_VALUE2}     teste4@email.com
${SENHA_VALUE2}     Aa@12345678
${EMAIL_VALUE3}     email@teste.com
${SENHA_VALUE3}    Aa@12345
${ENTRAR_BUTTON}    css:button[type="submit"]

${MINHA_CONTA_BUTTON}    xpath=//aside[@id="sidebar"]//a[normalize-space(.)="Minha conta"]
${ALTERAR_SENHA_BUTTON}    xpath=//button[normalize-space(.)="Alterar senha"]

${NOVA_SENHA_INPUT}    id=senha
${CONFIRMAR_NOVA_SENHA_INPUT}  id=confirmarSenha
${NOVA_SENHA_VALUE_VALID}    Senha1234@
${CONFIRMAR_NOVA_SENHA_VALUE}    Senha1234@
${NOVA_SENHA_VALUE_INVALID}    Senha4321@
${NOVA_SENHA_NO_VALUE}
${CONFIRMAR_NOVA_SENHA_NO_VALUE}    
${SALVAR_ALTERAÇÕES_BUTTON}    xpath=//button[normalize-space(.)="Salvar alterações"]

${MENSAGEM_SUCESSO}    id=toastBom
${MENSAGEM_ERRO}    id=toastRuim


*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
Fechar navegador
    Close Browser
    Capture Page Screenshot    
    
Efetuar login1
    Wait Until Element Is Visible    ${EMAIL_INPUT}
    Input Text    ${EMAIL_INPUT}    ${EMAIL_VALUE1}
    Input Text    ${SENHA_INPUT}    ${SENHA_VALUE1}
    Click Button    ${ENTRAR_BUTTON}
    Capture Page Screenshot

Efetuar login2
    Wait Until Element Is Visible    ${EMAIL_INPUT}
    Input Text    ${EMAIL_INPUT}    ${EMAIL_VALUE2}
    Input Text    ${SENHA_INPUT}    ${SENHA_VALUE2}
    Click Button    ${ENTRAR_BUTTON}
    Capture Page Screenshot

Efetuar login3
    Wait Until Element Is Visible    ${EMAIL_INPUT}
    Input Text    ${EMAIL_INPUT}    ${EMAIL_VALUE3}
    Input Text    ${SENHA_INPUT}    ${SENHA_VALUE3}
    Click Button    ${ENTRAR_BUTTON}
    Capture Page Screenshot
    
Selecionar minha conta
    Wait Until Element Is Visible    ${MINHA_CONTA_BUTTON}
    Click Element    ${MINHA_CONTA_BUTTON}
    Capture Page Screenshot

Selecionar alterar senha
    Wait Until Element Is Visible    ${ALTERAR_SENHA_BUTTON}
    Click Button    ${ALTERAR_SENHA_BUTTON}
    Capture Page Screenshot
    
Preencher campo de nova senha
    Wait Until Element Is Visible    ${NOVA_SENHA_INPUT}
    Input Text    ${NOVA_SENHA_INPUT}    ${NOVA_SENHA_VALUE_VALID}
    Capture Page Screenshot
    
Preencher campo de confirmar nova senha
    Input Text    ${CONFIRMAR_NOVA_SENHA_INPUT}    ${CONFIRMAR_NOVA_SENHA_VALUE}
    Capture Page Screenshot

Preencher campo de nova senha inválida
    Wait Until Element Is Visible    ${NOVA_SENHA_INPUT}
    Input Text    ${NOVA_SENHA_INPUT}    ${NOVA_SENHA_VALUE_INVALID}
    Capture Page Screenshot
    
Deixar campo de nova senha em branco
    Wait Until Element Is Visible    ${NOVA_SENHA_INPUT}
    Input Text    ${NOVA_SENHA_INPUT}    ${NOVA_SENHA_NO_VALUE}
    Capture Page Screenshot
    
Deixar campo de confirmar nova senha em branco
    Input Text    ${CONFIRMAR_NOVA_SENHA_INPUT}    ${CONFIRMAR_NOVA_SENHA_NO_VALUE}
    Capture Page Screenshot
    
Selecionar salvar alterações
    Click Button    ${SALVAR_ALTERAÇÕES_BUTTON}
    Capture Page Screenshot
    
Mensagem de sucesso
    Wait Until Element Is Visible    ${MENSAGEM_SUCESSO}
    Capture Page Screenshot
Mensagem de erro
    Wait Until Element Is Visible    ${MENSAGEM_ERRO}
    Capture Page Screenshot
