*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAlarmesTransito.robot
Resource        ../../../../resource/app/resource_cnsTipoAlarmesTransito.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Tipo Alarme (246)

*** Test Cases ***
Testcase: Acessar Tela: Tipo Alarme (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Trânsito | Tipo de Alarme
  Então devo visualizar a tela: Tipo Alarme (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Trânsito | Tipo de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Trânsito | Tipo de Alarme

Então devo visualizar a tela: Tipo Alarme (Consulta)
  resource_cnsTipoAlarmesTransito.Acessar Tela Consulta de Tipo Alarmes
