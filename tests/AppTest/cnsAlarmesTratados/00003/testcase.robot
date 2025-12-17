*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsAlarmesTratados.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Alarmes Tratados
${APPNAME}     cnsAlarmesTratados
${OBJETIVO}    Verificar todos os campos na tela Consulta de Alarmes Tratados.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Alarmes Tratados
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Alarmes Tratados - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Alarmes Tratados
  E verificar a label Data do Tratamento
  E verificar a label Hora do Tratamento
  E verificar a label Codin
  E verificar a label IP
  E verificar a label Descrição
  E verificar a label Alarme
  E verificar a label Descrição Alarme  #246 não tem essa label
  E verificar a label Data do Alarme
  E verificar a label Hora do Alarme
  E verificar a label Planta
  E verificar a label Usuário
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

Ao digitar a descrição: "Alarmes Tratados - Consulta", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Alarmes Tratados - Consulta

Então devo visualizar a tela: Consulta de Alarmes Tratados
  resource_cnsAlarmesTratados.Acessar Tela Consulta de Alarmes Tratados

E verificar a label Data do Tratamento
  resource_cnsAlarmesTratados.Verificar a label Data do Tratamento

E verificar a label Hora do Tratamento
  resource_cnsAlarmesTratados.Verificar a label Hora do Tratamento

E verificar a label Codin
  resource_cnsAlarmesTratados.Verificar a label Codin

E verificar a label IP
  resource_cnsAlarmesTratados.Verificar a label IP

E verificar a label Descrição
  resource_cnsAlarmesTratados.Verificar a label Descrição

E verificar a label Alarme
  resource_cnsAlarmesTratados.Verificar a label Alarme

E verificar a label Descrição Alarme
  resource_cnsAlarmesTratados.Verificar a label Descrição Alarme

E verificar a label Data do Alarme
  resource_cnsAlarmesTratados.Verificar a label Data do Alarme

E verificar a label Hora do Alarme
  resource_cnsAlarmesTratados.Verificar a label Hora do Alarme

E verificar a label Planta
  resource_cnsAlarmesTratados.Verificar a label Planta

E verificar a label Usuário
  resource_cnsAlarmesTratados.Verificar a label Usuário

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
