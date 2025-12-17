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

${SCREENNAME}  Relatório de Tipos de Alarme - Filtro
${APPNAME}     consRelatorioAlarmesTransito
${OBJETIVO}    Verificar todos os campos na tela Relatório de Tipos de Alarme - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Tipos de Alarme - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Tipo de Alarme", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Tipos de Alarme - Filtro
  E verificar o campo Data do Alarme
  E verificar o campo Hora do Alarme
  E verificar o campo Tipo do Alarme
  E verificar o campo Grupo de Câmeras
  E verificar o campo Status Alarme
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

Ao digitar a descrição: "Tipo de Alarme", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Tipo de Alarme

Então devo visualizar a tela: Relatório de Tipos de Alarme - Filtro
  resource_consRelatorioAlarmesTransito.Acessar Tela Relatório de Tipos de Alarme - Filtro

E verificar o campo Data do Alarme
  resource_consRelatorioAlarmesTransito.Verificar o campo Data do Alarme

E verificar o campo Hora do Alarme
  resource_consRelatorioAlarmesTransito.Verificar o campo Hora do Alarme

E verificar o campo Tipo do Alarme
  resource_consRelatorioAlarmesTransito.Verificar o campo Tipo do Alarme

E verificar o campo Grupo de Câmeras
  resource_consRelatorioAlarmesTransito.Verificar o campo Grupo de Câmeras

E verificar o campo Status Alarme
  resource_consRelatorioAlarmesTransito.Verificar o campo Status Alarme

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
