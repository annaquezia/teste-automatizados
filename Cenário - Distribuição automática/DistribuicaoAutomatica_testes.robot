*** Settings ***
Resource    DistribuicaoAutomatica_resources.robot
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
TC1 - Realizar a distribuição automática das doações
    [Documentation]    Faz login, acessar "Distribuir doações" e realiza uma distribuição das doações.
    Efetuar login
    Selecionar "Administrador"
    Selecionar "Distribuir doações"
    Realizar distribuição
    Verificar sucesso
