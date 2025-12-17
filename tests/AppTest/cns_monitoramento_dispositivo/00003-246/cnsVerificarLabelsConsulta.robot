*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_monitoramento_dispositivo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Monitoramento de Dispositivos
${APPNAME}     cns_monitoramento_dispositivo
${OBJETIVO}   Verificar todas as labels na Tela: Monitoramento de Dispositivos (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Monitoramento de Dispositivos (Consulta)
  [Tags]  VERIFY    246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Dispositivo Grid
  Quando visualizar a tela: Monitoramento de Dispositivos (Consulta)
  Então devo verificar a label: Status
  E verificar a label: Tipo Dispositivo
  E verificar a label: Endereço IP
  E verificar a label: Data Atualização
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Dispositivo Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivos Grid

Quando visualizar a tela: Monitoramento de Dispositivos (Consulta)
  resource_cns_monitoramento_dispositivo.Acessar Tela: Monitoramento de Dispositivos (Consulta)
  
Então devo verificar a label: Status
  resource_cns_monitoramento_dispositivo.Verificar a label Status

E verificar a label: Tipo Dispositivo
  resource_cns_monitoramento_dispositivo.Verificar a label Tipo Dispositivo

E verificar a label: Endereço IP
  resource_cns_monitoramento_dispositivo.Verificar a label Endereço IP

E verificar a label: Data Atualização
  resource_cns_monitoramento_dispositivo.Verificar a label Data Atualização

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"