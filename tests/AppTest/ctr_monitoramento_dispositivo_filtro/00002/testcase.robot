*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_dispositivo.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_dispositivo_filtro.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Monitoramento de Dispositivos Grid - Filtro
${APPNAME}     ctr_monitoramento_dispositivo_filtro
${OBJETIVO}    Verificar todos os campos na tela Monitoramento de Dispositivos Grid - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Monitoramento de Dispositivos Grid - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  Ao visualizar a tela: Monitoramento de Dispositivos Grid
  E clicar no botão: Filtrar
  Então devo visualizar a tela: Monitoramento de Dispositivos Grid - Filtro
  E verificar o campo Empresa
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Status
  E verificar o campo Tipo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivos Grid

Ao visualizar a tela: Monitoramento de Dispositivos Grid
  resource_ctr_monitoramento_dispositivo.Acessar Tela Monitoramento de Dispositivos Grid

E clicar no botão: Filtrar
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento de Dispositivos Grid - Filtro
  resource_ctr_monitoramento_dispositivo_filtro.Acessar Tela Monitoramento de Dispositivos Grid - Filtro

E verificar o campo Empresa
  resource_ctr_monitoramento_dispositivo_filtro.Verificar o campo Empresa

E verificar o campo Planta
  resource_ctr_monitoramento_dispositivo_filtro.Verificar o campo Planta

E verificar o campo Codin
  resource_ctr_monitoramento_dispositivo_filtro.Verificar o campo Codin

E verificar o campo Status
  resource_ctr_monitoramento_dispositivo_filtro.Verificar o campo Status

E verificar o campo Tipo
  resource_ctr_monitoramento_dispositivo_filtro.Verificar o campo Tipo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"