*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Configurações Crachá.


*** Test Cases ***

Testcase: Preencher todos os campos na tela Configurações Crachá
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Crachá
  Então devo visualizar a tela: Configurações Crachá
  #E selecionar uma opção no campo Mapa do SmartCard ""
  E selecionar uma opção no campo Gravação de crachá/hist. Automático "Não"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Crachá
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Crachá

Então devo visualizar a tela: Configurações Crachá
  resource_ctrConfiguracoesCracha.Acessar Tela Configurações Crachá

E selecionar uma opção no campo Mapa do SmartCard "${MAPA_DO_SMARTCARD}"
  resource_ctrConfiguracoesCracha.Selecionar uma opção no campo Mapa do SmartCard "${MAPA_DO_SMARTCARD}"

E selecionar uma opção no campo Gravação de crachá/hist. Automático "${GRAVAÇÃO}"
  resource_ctrConfiguracoesCracha.Selecionar uma opção no campo Gravação de crachá/hist. Automático "${GRAVAÇÃO}"
