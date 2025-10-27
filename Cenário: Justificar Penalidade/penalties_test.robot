*** Settings ***
Resource    penalties_resource.resource
Resource    ../common.resource
Library    SeleniumLibrary

*** Test Cases ***
Caso de teste 01: Registrar justificativa
    Configurar pasta de screenshots    Cenário: Justificar Penalidade/Screenshots/Teste_01
    Realizar Login Com Credenciais Corretas
    Registrar Evidência    Evidência_01.png
    Abrir A Página De Penalidades
    Registrar Evidência    Evidência_02.png
    Abrir Os Detalhes Da Penalidade
    Registrar Evidência    Evidência_03.png
    Preencher Campo De Justificativa    Estava mal no dia
    Registrar Evidência    Evidência_04.png
    Enviar Justificativa
    Registrar Evidência    Evidência_05.png
    Fechar Navegador