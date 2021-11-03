*** Settings ***
Documentation  Variaveis para processo de cadastro


*** Variables ***
${CADASTRO URL}                     https://next.arktus.com.br/cliente/cadastro
${CAMPO EMAIL}                      account.id
${CAMPO SENHA}                      account.password
${CAMPO DDD}                        telephones.main.ddd
${CAMPO TELEFONE}                   telephones.main.telefone
${SELECT INFO TRIBUTARIA}           //*[@id="mui-component-select-type.pj.indicatorIERecipient"]
${CONTRIBUINTE ICMS}                //*[@id="menu-type.pj.indicatorIERecipient"]/div[3]/ul/li[1]
${NAO CONTRIBUINTE}                 //*[@id="menu-type.pj.indicatorIERecipient"]/div[3]/ul/li[2]
${ISENTO DE INSCRICAO ESTADUAL}     //*[@id="menu-type.pj.indicatorIERecipient"]/div[3]/ul/li[3]
${CAMPO RESPONSAVEL}                type.pj.responsibleName
${CAMPO RAZAO SOCIAL}               type.pj.corporateName
${CAMPO CNPJ}                       type.pj.cnpj
${CAMPO INSCRICAO ESTADUAL}         type.pj.stateInscription
${FILE RECEITA PJ}                  document.[0].content
${FILE CONTRATO SOCIAL}             document.[1].content
${FILE DOC PESSOAIS}                document.[2].content
${BOTAO CADASTRAR}                  Cadastrar
${BOTAO FECHAR COOKIE}              //*[@id="__next"]/main/div/div/div/div/div/div[2]/div/button[2]


${EMAIL VALIDO}              emailValido@emailValido.com.br
${SENHA}                     123456
${DDD}                       45
${TELEFONE}                  998281323
${RESPONSAVEL}                teste robot
${RAZAO SOCIAL}              teste razao social
${CNPJ}                      90842564000164
${CNPJ VALIDO}               60795641000101
${INSCRICAO ESTADUAL}        134514276416
${FILE}                      /home/operador/PycharmProjects/python_test/Resources/Arktus/Documentos/doc_test_sintegra.pdf


${NOME POS LOGIN}            sc-cqw4zu-9 kLWaWy

${ALERTA}                    MuiAlert-message

${TEXTO PADRAO ALERTA DE DOCUMENTACAO}    Necessário anexar todos os documentos
${TEXTO PADRAO ALERTA DE USUARIO REPETIDO}      Encontramos um cadastro com os dados informados. Faça login ou recupere sua senha utilizando o e-mail abaixo:


