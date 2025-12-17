*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsPessoasAmbiente.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Pessoas por Ambiente
${APPNAME}     cnsPessoasAmbiente
${OBJETIVO}    Verificar todos os campos na tela Consulta de Pessoas por Ambiente.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Pessoas por Ambiente
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Pessoas por Ambiente", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Pessoas por Ambiente
  E verificar a label Ambiente
  E verificar a label Total Geral
  E verificar a label Pessoas
  E verificar a label Resultado Total Geral
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

Ao digitar a descrição: "Pessoas por Ambiente", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Pessoas por Ambiente

Então devo visualizar a tela: Consulta de Pessoas por Ambiente
  resource_cnsPessoasAmbiente.Acessar Tela Consulta de Pessoas por Ambiente

E verificar a label Ambiente
  resource_cnsPessoasAmbiente.Verificar a label Ambiente

E verificar a label Total Geral
  resource_cnsPessoasAmbiente.Verificar a label Total Geral

E verificar a label Pessoas
  resource_cnsPessoasAmbiente.Verificar a label Pessoas

E verificar a label Resultado Total Geral
  resource_cnsPessoasAmbiente.Verificar a label Resultado Total Geral

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
