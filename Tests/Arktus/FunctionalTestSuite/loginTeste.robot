*** Settings ***
Documentation  realizar login
Resource  ../../../Resources/Arktus/loginResources.robot

*** Test Cases ***
teste para realizar login
    [Documentation]  teste para realizar login
    [Tags]  login
    Acessar Pagina De Login
