*** Settings ***
Documentation       Teste de possíveis erros no processo de fazer um pedido no site
Suite Setup         Abrir navegador chrome
Suite Teardown      Close All Browsers
Resource            ../../../Resources/Arktus/PedidoResource.robot
Resource            ../../../Resources/Arktus/CommonFuncionality.robot


*** Test Cases ***
Caso de teste 01: Procurar um produto
    [Documentation]  Faz a busca de um produto por nome
    [Tags]  Busca
    Procurar produto por nome
    Sleep  2s
    Produrar produto por codigo
    Sleep  2s
    Produrar produto por marca
    Sleep  2s


Caso de teste 02: