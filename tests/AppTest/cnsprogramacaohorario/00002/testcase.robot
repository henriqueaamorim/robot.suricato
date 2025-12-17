*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrprogramacoes.robot
Resource        ../../../../resource/app/resource_cnsprogramacoes.robot
Resource        ../../../../resource/app/resource_cnsprogramacaohorario.robot
Resource        ../../../../resource/app/resource_abaprogramacoes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Horários
${APPNAME}     cnsprogramacaohorario
${OBJETIVO}    Verificar todos os campos na tela Consulta de Horários.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Horários
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
  E clicar na aba "Horário"
  Então visualizarei a tela: Consulta de Horários
  E verificar a label Data da Troca
  E verificar a label Código do Novo Horário
  E verificar a label Novo Horário
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

E clicar na aba "Horário"
  resource_abaprogramacoes.Clicar Na Aba Horário

Então visualizarei a tela: Consulta de Horários
  resource_cnsprogramacaohorario.Acessar Tela Consulta de Horários

E verificar a label Data da Troca
  resource_cnsprogramacaohorario.Verificar a label Data da Troca

E verificar a label Código do Novo Horário
  resource_cnsprogramacaohorario.Verificar a label Código do Novo Horário

E verificar a label Novo Horário
  resource_cnsprogramacaohorario.Verificar a label Novo Horário

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
