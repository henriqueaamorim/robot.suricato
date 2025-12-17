*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAlarmesTransito.robot
Resource        ../../../../resource/app/resource_cnsTipoAlarmesTransito.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todas as labels na tela: Tipo de Alarme (Consulta)
${SCREENNAME}  Tipo de Alarme
${APPNAME}     cnsTipoAlarmesTransito

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Tipo de Alarme (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Trânsito | Tipo de Alarme
  Quando visualizar a tela: Tipo Alarme (Consulta)
  Então devo verifiar a label: Tipo de Alarme
  E verificar a label: Descrição do Alarme
  E verificar a label: Procedimento
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Trânsito | Tipo de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Trânsito | Tipo de Alarme

Quando visualizar a tela: Tipo Alarme (Consulta)
  resource_cnsTipoAlarmesTransito.Acessar Tela Consulta de Tipo Alarmes

Então devo verifiar a label: Tipo de Alarme
    resource_cnsTipoAlarmesTransito.Verificar a label Tipo de Alarme

E verificar a label: Descrição do Alarme
    resource_cnsTipoAlarmesTransito.Verificar a label Descrição do Alarme

E verificar a label: Procedimento
    resource_cnsTipoAlarmesTransito.Verificar a label Procedimento

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"