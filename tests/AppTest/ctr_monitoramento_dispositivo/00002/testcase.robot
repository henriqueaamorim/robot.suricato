*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_dispositivo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Monitoramento de Dispositivos Grid
${APPNAME}     ctr_monitoramento_dispositivo
${OBJETIVO}    Verificar todos os campos na tela Monitoramento de Dispositivos Grid.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Monitoramento de Dispositivos Grid
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  Então devo visualizar a tela: Monitoramento de Dispositivos Grid
  E verificar o campo Tipo
  E verificar o campo Empresa
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Endereço IP
  E verificar o campo Status
  E verificar o campo Data Status
  E verificar o campo Empresa na parte de filtros
  E verificar o campo Planta na parte de filtros
  E verificar o campo Codin na parte de filtros
  E verificar o campo Status na parte de filtros
  E verificar o campo Tipo na parte de filtros
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivos Grid

Então devo visualizar a tela: Monitoramento de Dispositivos Grid
  resource_ctr_monitoramento_dispositivo.Acessar Tela Monitoramento de Dispositivos Grid

E verificar o campo Tipo
  resource_ctr_monitoramento_dispositivo.Verificar o campo Tipo

E verificar o campo Empresa
  resource_ctr_monitoramento_dispositivo.Verificar o campo Empresa

E verificar o campo Planta
  resource_ctr_monitoramento_dispositivo.Verificar o campo Planta

E verificar o campo Codin
  resource_ctr_monitoramento_dispositivo.Verificar o campo Codin

E verificar o campo Endereço IP
  resource_ctr_monitoramento_dispositivo.Verificar o campo Endereço IP

E verificar o campo Status
  resource_ctr_monitoramento_dispositivo.Verificar o campo Status

E verificar o campo Data Status
  resource_ctr_monitoramento_dispositivo.Verificar o campo Data Status

E verificar o campo Empresa na parte de filtros
  resource_ctr_monitoramento_dispositivo.Verificar o campo Empresa na parte de filtros

E verificar o campo Planta na parte de filtros
  resource_ctr_monitoramento_dispositivo.Verificar o campo Planta na parte de filtros

E verificar o campo Codin na parte de filtros
  resource_ctr_monitoramento_dispositivo.Verificar o campo Codin na parte de filtros

E verificar o campo Status na parte de filtros
  resource_ctr_monitoramento_dispositivo.Verificar o campo Status na parte de filtros

E verificar o campo Tipo na parte de filtros
  resource_ctr_monitoramento_dispositivo.Verificar o campo Tipo na parte de filtros

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"