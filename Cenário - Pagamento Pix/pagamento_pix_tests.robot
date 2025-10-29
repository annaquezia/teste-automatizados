*** Settings ***
Library          SeleniumLibrary
Resource         common_pix.resource
Resource         ../common.resource

*** Test Cases ***
TC1 - Preencher o campo de valor com um valor válido
    Configurar pasta de screenshots    Cenário: Pagamento Pix/Screenshots/Teste_01
    Realizar Login Com Credenciais Corretas
    Registrar Evidência    Evidência_104.png
    Selecionar Dropdown De Doações
    Registrar Evidência    Evidência_105.png
    Selecionar "Faça Uma Doação"
    Registrar Evidência    Evidência_106.png
    Digitar No Campo "Valor"    590    
    Avaliar Conteúdo Do Campo "Valor"    R$ 5,90
    Registrar Evidência    Evidência_107.png
    Avaliar Valor Na Tela De Pagamento     R$ 5,90
    Registrar Evidência    Evidência_108.png
    Fechar Navegador

TC2 - Preencher o campo de valor com um valor inválido
    Configurar pasta de screenshots    Cenário: Pagamento Pix/Screenshots/Teste_02
    Realizar Login Com Credenciais Corretas
    Registrar Evidência    Evidência_109.png
    Selecionar Dropdown De Doações
    Registrar Evidência    Evidência_110.png
    Selecionar "Faça Uma Doação"
    Registrar Evidência    Evidência_111.png
    Digitar No Campo "Valor"    Teste $%ˆ&*
    Avaliar Conteúdo Do Campo "Valor"    R$ 0,00
    Registrar Evidência    Evidência_112.png
    Avaliar Valor Na Tela De Pagamento     Digite um valor válido
    Registrar Evidência    Evidência_113.png
    Fechar Navegador

TC3 - Preencher o campo de valor com um valor em branco
    Configurar pasta de screenshots    Cenário: Pagamento Pix/Screenshots/Teste_03
    Realizar Login Com Credenciais Corretas
    Registrar Evidência    Evidência_114.png
    Selecionar Dropdown De Doações
    Registrar Evidência    Evidência_115.png
    Selecionar "Faça Uma Doação"
    Registrar Evidência    Evidência_116.png
    Avaliar Conteúdo Do Campo "Valor"    ' '
    Registrar Evidência    Evidência_117.png
    Avaliar Valor Na Tela De Pagamento     Digite um valor válido
    Registrar Evidência    Evidência_118.png
    Fechar Navegador