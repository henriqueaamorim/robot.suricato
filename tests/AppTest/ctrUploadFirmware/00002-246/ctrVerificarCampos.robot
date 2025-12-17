*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrUploadFirmware.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Upload de Firmware
${APPNAME}     ctrUploadFirmware
${OBJETIVO}    Verificar todos os campos na tela: Upload de Firmware.


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Upload de Firmware
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Equipamento | Upload de Firmware
  Quando visualizar a tela: Upload de Firmware
  Então devo verificar o campo: Gateway
  E verificar o campo: Firmware
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configuração | Equipamento | Upload de Firmware
  resource_mnu.Clicar No Menu Configurações | Upload de Firmware

Quando visualizar a tela: Upload de Firmware
  resource_ctrUploadFirmware.Acessar Tela Upload de Firmware

Então devo verificar o campo: Gateway
  resource_ctrUploadFirmware.Verificar o campo Gateway

E verificar o campo: Firmware
  resource_ctrUploadFirmware.Verificar o campo Firmware

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
