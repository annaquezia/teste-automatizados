*** Settings ***
Resource    inativarUser_resources.robot
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
TC1 - Inativar a conta de um usuário
    [Documentation]    Inativar a conta de um usuário por meio do perfil de administrador
    Efetuar login
    Selecionar "Administrador"
    Selecionar "Visualizar usuários"
    Selecionar "inativar"