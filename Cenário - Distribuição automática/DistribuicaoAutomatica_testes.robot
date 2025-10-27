*** Settings ***
Resource    DistribuicaoAutomatica_resources.robot
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Fluxo de Distribuição de doações
    [Documentation]    Faz login, acessar "Distribuir doações" e realiza uma distribuição das doações.
    Efetuar login
    Selecionar "Administrador"
    Selecionar "Distribuir doações"
    Realizar distribuição
    Verificar sucesso
