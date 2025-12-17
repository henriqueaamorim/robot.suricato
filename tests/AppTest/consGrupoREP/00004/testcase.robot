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

${SCREENNAME}  Consulta de Colaboradores por Grupo de REP
${APPNAME}     consGrupoREP
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores por Grupo de REP.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores por Grupo de REP
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Colaboradores por Grupo de REP", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores por Grupo de REP
  E verificar a label Código Colaborador
  E verificar a label Nome Colaborador
  E verificar a label Crachá
  E verificar a label Matrícula
  E verificar a label Número PIS
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Colaboradores por Grupo de REP
  resource_consGrupoREP.Acessar Tela Consulta de Colaboradores por Grupo de REP

E verificar a label Código Colaborador
  resource_consGrupoREP.Verificar a label Código Colaborador

E verificar a label Nome Colaborador
  resource_consGrupoREP.Verificar a label Nome Colaborador

E verificar a label Crachá
  resource_consGrupoREP.Verificar a label Crachá

E verificar a label Matrícula
  resource_consGrupoREP.Verificar a label Matrícula

E verificar a label Número PIS
  resource_consGrupoREP.Verificar a label Número PIS

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
