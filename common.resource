*** Variables ***
${URL}              http://localhost/PROJETO/index.php?common=2
${NAVEGADOR}        Chrome
${USUARIO_VALIDO}   admin@acalento.com
${SENHA_VALIDA}     fera4321

*** Keywords ***
Fechar navegador
    Close Browser
Abrir navegador e acessar página de login
    Open Browser        ${URL}    ${NAVEGADOR}
    Maximize Browser Window
    Page Should Contain   Login

Realizar login com credenciais corretas
    Abrir Navegador E Acessar Página De Login
    Input Text    id:email    ${USUARIO_VALIDO}
    Input Text    id:password    ${SENHA_VALIDA}
    Click Element     class:btn-primary
    Sleep     0.5
    Title Should Be     Acalento | Home

Registrar evidência
    [Arguments]    ${nome}
    Capture Page Screenshot    ${nome}

Configurar pasta de screenshots
    [Arguments]    ${pasta}
    Set Screenshot Directory     ${pasta}