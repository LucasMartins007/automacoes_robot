*** Settings ***
Documentation   Resources do processo de pedidos
Library         SeleniumLibrary
Resource        CommonFuncionality.robot
Resource        PagesPattern/HeaderPadrao.robot

*** Keywords ***
Procurar produto por nome
    Buscar Produto teste

Produrar produto por codigo
    Buscar Produto 04338A

Produrar produto por marca
    Buscar Produto Kestal

