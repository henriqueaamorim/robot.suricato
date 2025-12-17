*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrHistoricoCracha.robot
Resource        ../../../../resource/app/resource_cnsConsultasHistoricosCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta em Histórico de Crachá (Filtro)
${APPNAME}     cnsConsultasHistoricosCracha
${OBJETIVO}    Verificar todos os campos na tela Consulta em Histórico de Crachá (Filtro).

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta em Histórico de Crachá (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Histórico de Crachá", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Histórico de Crachá - Filtro
  E então clicar no botão: "OK"
  Então devo visualizar a tela: Consulta em Histórico de Crachá (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Tipo do Colaborador
  E verificar o campo Matrícula
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

Ao digitar a descrição: "Consulta de Histórico de Crachá", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Histórico de Crachá

Então devo visualizar a tela: Consulta de Histórico de Crachá - Filtro
  resource_ctrHistoricoCracha.Acessar Tela Consulta de Histórico de Crachá - Filtro

E então clicar no botão: "OK"
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consulta em Histórico de Crachá (Filtro)
  resource_cnsConsultasHistoricosCracha.Acessar Tela Consulta em Histórico de Crachá (Filtro)

E verificar a label Pesquisa
  resource_cnsConsultasHistoricosCracha.Verificar a label Pesquisa
  
E verificar o campo Tipo do Colaborador
  resource_cnsConsultasHistoricosCracha.Verificar o campo Tipo do Colaborador

E verificar o campo Matrícula
  resource_cnsConsultasHistoricosCracha.Verificar o campo Matrícula

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
