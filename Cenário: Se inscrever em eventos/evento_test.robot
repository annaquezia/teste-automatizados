*** Settings ***
Resource    evento_resource.resource
Resource    ../common.resource
Library    SeleniumLibrary

*** Test Cases ***
Caso de teste 01: Realizar a inscrição em um evento
    Configurar pasta de screenshots    Cenário: Se inscrever em eventos/Screenshots/Teste_01
    Realizar Login Com Credenciais Corretas
    Registrar Evidência    Evidência_48.png
    Selecionar Dropdown De "Eventos"
    Registrar Evidência    Evidência_49.png
    Ir Para A Página De "Eventos"
    Registrar Evidência    Evidência_50.png
    Se Inscrever No Evento
    Registrar Evidência    Evidência_51.png
    Fechar Navegador