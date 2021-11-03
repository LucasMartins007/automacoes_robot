*** Settings ***
Documentation  Para realizar o login

Library     SeleniumLibrary
Resource    loginVariaveis.robot

*** Keywords ***
Acessar pagina de login

    Open Browser    https://next.arktus.com.br      Chrome
    Sleep  1s
    Click Element   ${Entre}
    Sleep  3s
    Press Keys      ${CPF,CNPJ ou E-mail}   natalia@smartbr.com
    Press Keys      ${Senha}    123456789
    Click Element   ${Botao ENTRAR}

