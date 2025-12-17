*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAlarmesTransito.robot
Resource        ../../../../resource/app/resource_cnsTipoAlarmesTransito.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Tipo de Alarme (Filtro)
${SCREENNAME}  Tipo de Alarme
${APPNAME}     cnsTipoAlarmesTransito

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Tipo de Alarme (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Trânsito | Tipo de Alarme
  Quando visualizar a tela: Tipo Alarme (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Tipo Alarme (Filtro)
  E verificar o campo: Tipo de Alarme	
  E verificar o campo: Descrição do Alarme	
  E verificar o campo: Procedimento
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Trânsito | Tipo de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Trânsito | Tipo de Alarme

Quando visualizar a tela: Tipo Alarme (Consulta)
  resource_cnsTipoAlarmesTransito.Acessar Tela Consulta de Tipo Alarmes

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros	

Então devo visualizar a tela: Tipo Alarme (Filtro)
    resource_cnsTipoAlarmesTransito.Acessar Tela Filtro de Tipo Alarmes

E verificar o campo: Tipo de Alarme	
  resource_cnsTipoAlarmesTransito.Verificar o campo Tipo de Alarme

E verificar o campo: Descrição do Alarme	
  resource_cnsTipoAlarmesTransito.Verificar o campo Descrição do Alarme

E verificar o campo: Procedimento
  resource_cnsTipoAlarmesTransito.Verificar o campo Procedimento

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"