*** Settings ***
Resource    SaidaDoacao_resources.robot
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Fluxo da Saída de doações
    [Documentation]    Faz login, acessar "Saída de doações" e registra a saída com sucesso
    Efetuar login
    Selecionar "Administrador"
    Selecionar "Saída de doações"
    Registrar a saída
    Verificar sucesso
