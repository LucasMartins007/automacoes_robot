#### seção de dados de teste || cabeçalho de seção   ####
*** Settings ***
Documentation     Resources do processo de Login
Library           SeleniumLibrary
Library           DatabaseLibrary

*** Variables ***
${CHROME}               Chrome
${URL}                  https://next.arktus.com.br

${USER}     OCEAN
${SENHA}    p1nc3l
${HOST}     192.168.200.4
${DB_SID}   ROLLOUT


*** Keywords ***
Abrir navegador chrome
    [Documentation]                 Abre uma página do chrome na página de login
    Open Browser                    ${URL}      ${CHROME}
    Sleep  1s

Fechar navegador
    Close Browser

Documentos padrao
    ${FILE SINTEGRA}     /home/operador/PycharmProjects/python_test/Resources/Arktus/Documentos/doc_test_sintegra.pdf

Conexao com o banco
    Connect To Database Using Custom Params    cx_Oracle    '${USER}/${SENHA}@${HOST}:${1521}/${db_sid}'
    log    conectado com sucesso!

Limpar campo ${INPUT}
    Clear Element Text ${INPUT}
