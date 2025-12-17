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

${SCREENNAME}  Consulta em Histórico de Crachá
${APPNAME}     cnsConsultasHistoricosCracha
${OBJETIVO}    Verificar todos os campos na tela Consulta em Histórico de Crachá.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta em Histórico de Crachá
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Histórico de Crachá", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Histórico de Crachá - Filtro
  E então clicar no botão: "OK"
  Então devo visualizar a tela: Consulta em Histórico de Crachá
  E verificar a label Empresa
  E verificar a label Tipo do Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Admissão
  E verificar a label Crachás
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

Então devo visualizar a tela: Consulta em Histórico de Crachá
  resource_cnsConsultasHistoricosCracha.Acessar Tela Consulta em Histórico de Crachá

E verificar a label Empresa
  resource_cnsConsultasHistoricosCracha.Verificar a label Empresa

E verificar a label Tipo do Colaborador
  resource_cnsConsultasHistoricosCracha.Verificar a label Tipo do Colaborador

E verificar a label Matrícula
  resource_cnsConsultasHistoricosCracha.Verificar a label Matrícula

E verificar a label Nome
  resource_cnsConsultasHistoricosCracha.Verificar a label Nome

E verificar a label Admissão
  resource_cnsConsultasHistoricosCracha.Verificar a label Admissão

E verificar a label Crachás
  resource_cnsConsultasHistoricosCracha.Verificar a label Crachás

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
