*** Settings ***
Resource    fazerLogin_resources.robot
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
TC1 - Fazer login com conta existente
    [Documentation]    Realizar o login com uma conta existente no banco de dados
    Selecionar o botão "Entrar" na home
    Digitar email válido
    Digitar senha válida
    Selecionar botão entrar
    Acessar página principal

TC2 - Fazer login com conta inexistente
    [Documentation]    Realizar o login com uma conta inexistente no banco de dados
    Selecionar o botão "Entrar" na home
    Digitar email inválido
    Digitar senha inválida
    Selecionar botão entrar
    Mensagem de erro

TC3 - Fazer login com os campos em branco
    [Documentation]    Tentar realizar o login com os campos de e-mail e senha em branco
    Selecionar o botão "Entrar" na home
    Deixar campo do email em branco
    Deixar campo da senha em branco
    Selecionar botão entrar