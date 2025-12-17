*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consGrupoREP.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Colaboradores por Grupo de REP - Filtro
${APPNAME}     consGrupoREP
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores por Grupo de REP - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores por Grupo de REP - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Colaboradores por Grupo de REP", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores por Grupo de REP - Filtro
  E verificar o campo Código Grupo de REP
  E verificar o campo Nome Colaborador
  E verificar o campo Crachá
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

Ao digitar a descrição: "Consulta de Colaboradores por Grupo de REP", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Colaboradores por Grupo de REP

Então devo visualizar a tela: Consulta de Colaboradores por Grupo de REP - Filtro
  resource_consGrupoREP.Acessar Tela Consulta de Colaboradores por Grupo de REP - Filtro

E verificar o campo Código Grupo de REP
  resource_consGrupoREP.Verificar o campo Código Grupo de REP

E verificar o campo Nome Colaborador
  resource_consGrupoREP.Verificar o campo Nome Colaborador

E verificar o campo Crachá
  resource_consGrupoREP.Verificar o campo Crachá

E verificar o campo Matrícula
  resource_consGrupoREP.Verificar o campo Matrícula

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
