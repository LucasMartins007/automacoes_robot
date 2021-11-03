*** Settings ***
Documentation     Teste de diferentes casos de cadastro equivocados
Test Setup        Ir para a página de cadastro
Suite Teardown    Close All Browsers
Resource            ../../../Resources/Arktus/CadastroResources.robot

*** Test Cases ***
caso de teste 01: Cadastro de Usuario
    [Documentation]  Fazer um cadastro de usuário
    [Tags]  Cadastro
    Cadastrar Usuario


caso de teste 02: Cadastro de Usuario Sem documentos
    [Documentation]  Fazer um cadastro de um usuário sem documentos
    [Tags]  Cadastro
    Cadastrar usuario sem informar documentos