*** Settings ***
Documentation       Elementos da tela de uma pesquisa de produtos padrão
Test Setup          Abrir navegador chrome
Library             SeleniumLibrary
Resource            ../CommonFuncionality.robot

*** Variables ***
${RESULTADOS DA BUSCA}                class=sc-1t7wrw2-3 bVoxec
${BUSCA REALIZADA}                    class=MuiTypography-root sc-1t7wrw2-2 hBAMFi MuiTypography-h6

*** Keywords ***
Verificação da tela pós busca ${BUSCA}
    [Documentation]             Verificação da tela de resultado de uma busca
    Element should contain      ${RESULTADOS DA BUSCA}      Resultado da busca:
    Element should contain      ${BUSCA REALIZADA}          ${BUSCA}


