*** Settings ***
Documentation  Elementos do header padrão do site


*** Variables ***
${LOGO}                 Home
${CAMPO BUSCAR}         id=input-search-header
${LUPA BUSCAR}          xpath=//*[@id="__next"]/header/div[2]/div/div[2]/form/div/div/div/button

${AVATAR USUARIO}       class=MuiButtonBase-root MuiIconButton-root cqw4zu-7 hiQxka
${MINHA CONTA}          link=/minhaconta
${MEUS PEDIDOS}         link=/minhaconta/pedidos/aguardando-pagamento
${SAIR}                 class=MuiButtonBase-root MuiListItem-root MuiMenuItem-root sc-1j7rlc8-2 aHFXu MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button


${NOME USUARIO}                 class=cqw4zu-9 IomZP
${ICONE CARRINHO}               class=MuiButtonBase-root MuiIconButton-root cqw4zu-7 hiQxka

${LINK LOJAS}                   link=/lojas
${LINK CENTRAL DE ATENDIMENTO}  link=/atendimento
${LINK CONTATO}                 link=/contato
${LINK PAGAR AGORA}             link=/totem


*** Keywords ***
Ir para tela Inicial
    click element   ${LOGO}

Abrir carrinho
    click element   ${ICONE CARRINHO}


Buscar produto ${PRODUTO}
    Press Keys  ${CAMPO BUSCAR}     ${PRODUTO}
    Click Element   ${LUPA BUSCAR}
    Sleep  3s
    Limpar campo ${CAMPO BUSCAR}


Abrir link pagar agora
    click element   ${LINK PAGAR AGORA}

Abrir link contato
    click element   ${LINK CONTATO}

Abrir link central de atendimento
    click element   ${LINK CENTRAL DE ATENDIMENTO}

Clicar no avatar do usuario
    click element   ${AVATAR USUARIO}