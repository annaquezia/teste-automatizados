*** Settings ***
Resource   cancelarInscricao_resources.robot
Test Setup  Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
CT1 - Realizar o cancelamento de inscrição em um evento
    [Documentation]    Esse teste realiza o cancelamento de inscrição em um evento
    [Tags]    cancelar_inscricao
    Efetuar login
    Selecionar "Eventos"
    Selecionar "Meus eventos"
    Selecionar ir para a área de confirmação
    Selecionar "Não posso ir"
    Selecionar "Sim cancelar"
    Mensagem de sucesso