*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrUploadFirmware.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Upload de Firmware


*** Test Cases ***
Testcase: Acessar Tela: Upload de Firmware
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Equipamento | Upload de Firmware
  Então devo visualizar a tela: Upload de Firmware

*** Keywords ***
Dado que eu acesse o menu: Configuração | Equipamento | Upload de Firmware
  resource_mnu.Clicar No Menu Configurações | Upload de Firmware

Então devo visualizar a tela: Upload de Firmware
  resource_ctrUploadFirmware.Acessar Tela Upload de Firmware
