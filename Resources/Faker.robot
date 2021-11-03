*** Settings ***
Documentation  Gerar atributos fakes e aleatórios
Library        ../Generator.py

*** Keywords ***
Fake Email
    ${EMAIL FAKE}   Get Email
    [Return]        ${EMAIL FAKE}

Fake Nome
    ${NOME FAKE}   Get Nome
    [Return]    ${NOME FAKE}

Fake DDD
    ${DDD FAKE}    Get DDD
    [Return]       ${DDD FAKE}

Fake Telefone
    ${TELEFONE FAKE}   Get Telefone
    [Return]        ${TELEFONE FAKE}

Fake CNPJ
    ${CNPJ FAKE}    Get Cnpj
    [Return]        ${CNPJ FAKE}

Fake IE
    ${IE FAKE}      Get Ie
    [Return]        ${IE FAKE}

Fake Password
    ${SENHA FAKE}   Get Password
    [Return]        ${SENHA FAKE}
