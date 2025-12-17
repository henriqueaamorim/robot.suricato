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

${SCREENNAME}  Consulta de Alarmes Tratados - Filtro
${APPNAME}     cnsAlarmesTratados
${OBJETIVO}    Verificar todos os campos na tela Consulta de Alarmes Tratados - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Alarmes Tratados - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Alarmes Tratados - Consulta", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Alarmes Tratados
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Alarmes Tratados - Filtro
  E verificar a label Pesquisa
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo IP
  E verificar o campo Grupo
  E verificar o campo Alarme
  E verificar o campo Data do Alarme
  E verificar o campo Hora do Alarme
  E verificar o campo Tipo Alarme
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

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Alarmes Tratados - Filtro
  resource_cnsAlarmesTratados.Acessar Tela Consulta de Alarmes Tratados - Filtro

E verificar a label Pesquisa
  resource_cnsAlarmesTratados.Verificar a label Pesquisa

E verificar o campo Planta
  resource_cnsAlarmesTratados.Verificar o campo Planta

E verificar o campo Codin
  resource_cnsAlarmesTratados.Verificar o campo Codin

E verificar o campo IP
  resource_cnsAlarmesTratados.Verificar o campo IP

E verificar o campo Grupo
  resource_cnsAlarmesTratados.Verificar o campo Grupo

E verificar o campo Alarme
  resource_cnsAlarmesTratados.Verificar o campo Alarme

E verificar o campo Data do Alarme
  resource_cnsAlarmesTratados.Verificar o campo Data do Alarme

E verificar o campo Hora do Alarme
  resource_cnsAlarmesTratados.Verificar o campo Hora do Alarme

E verificar o campo Tipo Alarme
  resource_cnsAlarmesTratados.Verificar o campo Tipo Alarme

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
