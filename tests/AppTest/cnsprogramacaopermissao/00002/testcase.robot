*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrprogramacoes.robot
Resource        ../../../../resource/app/resource_cnsprogramacoes.robot
Resource        ../../../../resource/app/resource_cnsprogramacaopermissao.robot
Resource        ../../../../resource/app/resource_abaprogramacoes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Permissões
${APPNAME}     cnsprogramacaopermissao
${OBJETIVO}    Verificar todos os campos na tela Consulta de Permissões.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Permissões
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Programações", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Programações - Filtro
  E preencher o campo Data Inicial "05/05/2022"
  E clicar no botão: OK
  Então devo visualizar a tela: Consulta de Programações
  E clicar na aba "Permissão"
  Então visualizarei a tela: Consulta de Permissões
  E verificar a label Data Inicial
  E verificar a label Hora Final
  E verificar a label Dias Normais
  E verificar a label Sábado 
  E verificar a label Domingo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Programações", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Programações

Então devo visualizar a tela: Consulta de Programações - Filtro
  resource_ctrprogramacoes.Acessar Tela Consulta de Programações - Filtro

E preencher o campo Data Inicial "${DATA}"
  resource_ctrprogramacoes.Preencher o campo Data Inicial "${DATA}"

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consulta de Programações
  resource_cnsprogramacoes.Acessar Tela Consulta de Programações

E clicar na aba "Permissão"
  resource_abaprogramacoes.Clicar Na Aba Permissão

Então visualizarei a tela: Consulta de Permissões
  resource_cnsprogramacaopermissao.Acessar Tela Consulta de Permissões

E verificar a label Data Inicial
  resource_cnsprogramacaopermissao.Verificar a label Data Inicial

E verificar a label Hora Final
  resource_cnsprogramacaopermissao.Verificar a label Hora Final

E verificar a label Dias Normais
  resource_cnsprogramacaopermissao.Verificar a label Dias Normais

E verificar a label Sábado 
  resource_cnsprogramacaopermissao.Verificar a label Sábado 

E verificar a label Domingo
  resource_cnsprogramacaopermissao.Verificar a label Domingo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
