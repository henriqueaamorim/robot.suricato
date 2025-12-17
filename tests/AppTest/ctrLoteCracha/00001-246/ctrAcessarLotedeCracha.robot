*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrLoteCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Gerar Lote de Crachá

*** Test Cases ***
Testcase: Acessar Tela: Gerar Lote de Crachá
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  Então devo visualizar a tela: Gerar Lote de Crachá

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Lote de Crachá

Então devo visualizar a tela: Gerar Lote de Crachá
  resource_ctrLoteCracha.Acessar Tela Lote de Cracha
