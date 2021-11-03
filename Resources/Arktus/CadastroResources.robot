*** Settings ***
Documentation  Resources do processo de cadastro
Library           SeleniumLibrary
Resource          CommonFuncionality.robot
Resource          CadastroVariables.robot
Resource          ../Faker.robot


*** Keywords ***
Ir para a página de cadastro
    [Documentation]                 Abre uma página do chrome na página de cadastro
    Abrir navegador chrome
    Go To                           ${CADASTRO URL}
    Sleep                           3s
    Pagina de cadastro deve estar aberta

Pagina de cadastro deve estar aberta
    [Documentation]                 Verifica o título da página de cadastro
    Title Should Be                 Arktus | Cadastro de Cliente

Cadastrar usuario
    [Documentation]     Faz o preenchimento do formulário com dados válidos
    ${FAKE EMAIL}                    Fake Email
    ${FAKE RESPONSAVEL}              Fake Nome
    ${FAKE DDD}                      Fake DDD
    ${FAKE TELEFONE}                 Fake Telefone
    ${FAKE SENHA}                    Fake Password
    ${FAKE CNPJ}                     Fake CNPJ
    ${FAKE IE}                       Fake IE

    Press Keys          name=${CAMPO EMAIL}                 ${FAKE EMAIL}
    Input Password      name=${CAMPO SENHA}                 ${FAKE SENHA}
    Press Keys          name=${CAMPO DDD}                   ${FAKE DDD}
    Press Keys          name=${CAMPO TELEFONE}              ${FAKE TELEFONE}
    Click Element       xpath=${SELECT INFO TRIBUTARIA}
    Click Element       xpath=${CONTRIBUINTE ICMS}
    Press Keys          name=${CAMPO RESPONSAVEL}           ${FAKE RESPONSAVEL}
    Press Keys          name=${CAMPO RAZAO SOCIAL}          ${FAKE RESPONSAVEL} LTDA.
    Press Keys          name=${CAMPO CNPJ}                  ${FAKE CNPJ}
    Input Text          name=${CAMPO INSCRICAO ESTADUAL}    ${FAKE IE}
    click element       xpath=${BOTAO FECHAR COOKIE}
    Choose File         name=${FILE RECEITA PJ}             ${FILE}
    Choose File         name=${FILE CONTRATO SOCIAL}        ${FILE}
    Choose File         name=${FILE DOC PESSOAIS}           ${FILE}
    click element       name=${BOTAO CADASTRAR}
    Sleep  3s


Cadastrar usuario sem informar documentos
    [Documentation]     Faz o preenchimento do formulário com dados válidos, informando somente um documento
    ${FAKE EMAIL}       Fake Email
    ${FAKE IE}          Fake IE
    ${FAKE CNPJ}        Fake CNPJ

    Press Keys          name=${CAMPO EMAIL}                 ${FAKE EMAIL}
    Input Password      name=${CAMPO SENHA}                 ${SENHA}
    Press Keys          name=${CAMPO DDD}                   ${DDD}
    Press Keys          name=${CAMPO TELEFONE}              ${TELEFONE}
    Click Element       xpath=${SELECT INFO TRIBUTARIA}
    Click Element       xpath=${CONTRIBUINTE ICMS}
    Press Keys          name=${CAMPO RESPONSAVEL}           ${RESPONSAVEL}
    Press Keys          name=${CAMPO RAZAO SOCIAL}          ${RAZAO SOCIAL}
    Press Keys          name=${CAMPO CNPJ}                  ${FAKE CNPJ}
    Input Text          name=${CAMPO INSCRICAO ESTADUAL}    ${FAKE IE}
    click element       xpath=${BOTAO FECHAR COOKIE}
    click element       name=${BOTAO CADASTRAR}
    Sleep  3s
    Element Should Contain      class=${ALERTA}       ${TEXTO PADRAO ALERTA DE DOCUMENTACAO}