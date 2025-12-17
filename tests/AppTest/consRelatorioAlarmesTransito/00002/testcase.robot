*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consRelatorioAlarmesTransito.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Relatório de Tipos de Alarme
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Tipo de Alarme", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Tipos de Alarme - Filtro
  Então devo preencher o campo "Data do Alarme"
  E preencher o campo "Hora do Alarme"
  E selecionar a opção "Test Inject" no campo Grupo de Câmeras
  E selecionar a opção "Sem Tratamento" no campo Status Alarme
  E então clicar no botão: Pesquisar Registros
  Então visualizarei a tela: Relatório de Tipos de Alarme

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Tipo de Alarme", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Tipo de Alarme

Então devo visualizar a tela: Relatório de Tipos de Alarme - Filtro
  resource_consRelatorioAlarmesTransito.Acessar Tela Relatório de Tipos de Alarme - Filtro

Então devo preencher o campo "Data do Alarme"
  resource_consRelatorioAlarmesTransito.Preencher campo Data

E preencher o campo "Hora do Alarme"
  resource_consRelatorioAlarmesTransito.Preencher campo Hora do Alarme

E selecionar a opção "${OPCAO}" no campo Grupo de Câmeras
  resource_consRelatorioAlarmesTransito.Preencher campo Grupo de Camêras ${OPCAO}

E selecionar a opção "${OPCAO}" no campo Status Alarme
  resource_consRelatorioAlarmesTransito.Preencher campo Status Alarme ${OPCAO}

E então clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então visualizarei a tela: Relatório de Tipos de Alarme
  resource_consRelatorioAlarmesTransito.Acessar Tela Relatório de Tipos de Alarme
