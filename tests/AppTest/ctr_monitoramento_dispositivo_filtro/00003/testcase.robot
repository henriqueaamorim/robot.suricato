*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_dispositivo.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_dispositivo_filtro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Monitoramento de Dispositivos Grid - Filtro.


*** Test Cases ***

Testcase: Preencher todos os campos na tela Monitoramento de Dispositivos Grid - Filtro
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  Ao visualizar a tela: Monitoramento de Dispositivos Grid
  E clicar no botão: Filtrar
  Então devo visualizar a tela: Monitoramento de Dispositivos Grid - Filtro
  E selecionar uma opção no campo Empresa "MICROPRESS SA"
  E selecionar uma opção no campo Planta "Descrição"
  E selecionar uma opção no campo Codin "Catraca"
  E selecionar uma opção no campo Status "ON"
  E selecionar uma opção no campo Tipo "CONEX"

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivos Grid

Ao visualizar a tela: Monitoramento de Dispositivos Grid
  resource_ctr_monitoramento_dispositivo.Acessar Tela Monitoramento de Dispositivos Grid

E clicar no botão: Filtrar
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento de Dispositivos Grid - Filtro
  resource_ctr_monitoramento_dispositivo_filtro.Acessar Tela Monitoramento de Dispositivos Grid - Filtro

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_ctr_monitoramento_dispositivo_filtro.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_ctr_monitoramento_dispositivo_filtro.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Codin "${CODIN}"
  resource_ctr_monitoramento_dispositivo_filtro.Selecionar uma opção no campo Codin "${CODIN}"

E selecionar uma opção no campo Status "${STATUS}"
  resource_ctr_monitoramento_dispositivo_filtro.Selecionar uma opção no campo Status "${STATUS}"

E selecionar uma opção no campo Tipo "${TIPO}"
  resource_ctr_monitoramento_dispositivo_filtro.Selecionar uma opção no campo Tipo "${TIPO}"
