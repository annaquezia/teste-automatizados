*** Settings ***
Resource    EditarSenha_resources.robot
Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
TC1 - Editar senha com os campos em branco
    Efetuar login1
    Selecionar minha conta
    Selecionar alterar senha
    Deixar campo de nova senha em branco
    Deixar campo de confirmar nova senha em branco
    Selecionar salvar alterações
    Mensagem de erro

TC2 - Editar senha com senhas diferentes
    Efetuar login2
    Selecionar minha conta
    Selecionar alterar senha
    Preencher campo de nova senha inválida
    Preencher campo de confirmar nova senha
    Selecionar salvar alterações
    Mensagem de erro

TC3 - Editar senha com senhas iguais
    Efetuar login3
    Selecionar minha conta
    Selecionar alterar senha
    Preencher campo de nova senha
    Preencher campo de confirmar nova senha
    Selecionar salvar alterações
    Mensagem de sucesso
